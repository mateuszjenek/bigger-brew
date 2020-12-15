import 'dart:convert';

import 'package:bigger_brew/domain/beer/beer_failure.dart';
import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/value_objects.dart';
import 'package:bigger_brew/infrastructure/beer/beer_dto.dart';
import 'package:bigger_brew/infrastructure/beer/beer_event.dart';
import 'package:bigger_brew/infrastructure/beer/beer_event_queue.dart';
import 'package:bigger_brew/infrastructure/beer/i_beer_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton()
class LocalBeerSource implements IBeerSource {
  final BeerEventQueue _eventQueue;

  LocalBeerSource(this._eventQueue);

  @override
  Future<Either<BeerFailure, Unit>> deleteBeer(int beerId,
      {bool withoutQueue = false}) async {
    var beers = await getFromLocal();
    beers.removeWhere((beer) => beer.id.getOrCrash() == beerId);
    await updateFromLocal(beers);
    if (!withoutQueue) {
      await _eventQueue.push(BeerEvent.deleteBeer(
        DateTime.now().millisecondsSinceEpoch,
        beerId,
      ));
    }
    return right(unit);
  }

  @override
  Future<Either<BeerFailure, List<Beer>>> getAll() async {
    var beers = await getFromLocal();
    return right(beers);
  }

  @override
  Future<Either<BeerFailure, Beer>> registerBeer(
      String name, String productCode, double price,
      {bool withoutQueue = false}) async {
    if (price < 0) return left(BeerFailure.serverError());

    var beers = await getFromLocal();

    int lastID = -1;
    beers.forEach((beer) {
      if (beer.id.getOrCrash() > lastID) {
        lastID = beer.id.getOrCrash();
      }
    });

    var beer = Beer(
        id: ID(lastID + 1),
        name: BeerName(name),
        productCode: ProductCode(productCode),
        price: Price(price),
        quantity: Quantity(0));
    beers.add(beer);
    await updateFromLocal(beers);
    if (!withoutQueue)
      await _eventQueue.push(BeerEvent.registerBeer(
        DateTime.now().millisecondsSinceEpoch,
        lastID + 1,
        name,
        productCode,
        price,
      ));
    return right(beer);
  }

  @override
  Future<Either<BeerFailure, Beer>> updateBeer(
      int beerId, String name, String productCode, double price,
      {bool withoutQueue = false}) async {
    if (price < 0) return left(BeerFailure.serverError());
    var beers = await getFromLocal();
    var beer = beers.firstWhere((beer) => beer.id.getOrCrash() == beerId);
    beers.removeWhere((beer) => beer.id.getOrCrash() == beerId);
    beer = beer.copyWith(
      name: BeerName(name),
      productCode: ProductCode(productCode),
      price: Price(price),
    );
    beers.add(beer);
    await updateFromLocal(beers);
    if (!withoutQueue)
      await _eventQueue.push(BeerEvent.updateBeer(
        DateTime.now().millisecondsSinceEpoch,
        beerId,
        name,
        productCode,
        price,
      ));
    return right(beer);
  }

  @override
  Future<Either<BeerFailure, Beer>> updateQuantity(
      int beerId, int quantityChange,
      {bool withoutQueue = false}) async {
    var beers = await getFromLocal();
    var beer = beers.firstWhere((beer) => beer.id.getOrCrash() == beerId);
    beers.removeWhere((beer) => beer.id.getOrCrash() == beerId);
    var quantity = beer.quantity.getOrCrash() + quantityChange;
    if (quantity < 0) return left(BeerFailure.serverError());
    beer = beer.copyWith(quantity: Quantity(quantity));
    beers.add(beer);
    await updateFromLocal(beers);
    if (!withoutQueue)
      await _eventQueue.push(BeerEvent.updateQuantity(
        DateTime.now().millisecondsSinceEpoch,
        beerId,
        quantityChange,
      ));
    return right(beer);
  }

  Future<bool> updateFromLocal(List<Beer> beers) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var beersDto = beers.map((beer) => BeerDto.fromDomain(beer)).toList();
    var json = jsonEncode(beersDto);
    return await prefs.setString(IBeerSource.key, json);
  }

  Future<List<Beer>> getFromLocal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var beersStr = prefs.getString(IBeerSource.key);
    if (beersStr == null) {
      return [];
    }
    List<dynamic> json = jsonDecode(beersStr);
    List<BeerDto> beersDto =
        json.map((json) => BeerDto.fromJson(json)).toList();
    return beersDto.map((beerDto) => beerDto.toDomain()).toList();
  }
}
