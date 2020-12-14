import 'dart:convert';

import 'package:bigger_brew/domain/auth/i_auth_facade.dart';
import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/beer_failure.dart';
import 'package:bigger_brew/infrastructure/beer/i_beer_source.dart';
import 'package:bigger_brew/infrastructure/beer/sources/local_beer_source.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../beer_dto.dart';

@LazySingleton()
class RemoteBeerSource implements IBeerSource {
  static const String _repositoryAddress = "http://localhost";

  final IAuthFacade _authFacade;
  final LocalBeerSource _localBeerSource;

  RemoteBeerSource(this._authFacade, this._localBeerSource);

  Future<bool> isAvaliable() async {
    try {
      var response = await http.get("$_repositoryAddress/health");
      if (response.statusCode == 200) {
        return true;
      }
    } catch (_) {}
    return false;
  }

  @override
  Future<Either<BeerFailure, List<Beer>>> getAll() async {
    try {
      var token = await _getUserToken();
      var response = await http.get("$_repositoryAddress/beers", headers: {
        'Authorization': 'Bearer $token',
      });
      if (response.statusCode == 200) {
        List<dynamic> jsonResponse =
            jsonDecode(utf8.decode(response.bodyBytes));
        List<BeerDto> beersResponse =
            jsonResponse.map((json) => BeerDto.fromJson(json)).toList();
        var beers = beersResponse.map((e) => e.toDomain()).toList();
        await _localBeerSource.updateFromLocal(beers);
        return right(beers);
      } else {
        return left(BeerFailure.serverError());
      }
    } catch (_) {
      return left(BeerFailure.unexpected());
    }
  }

  @override
  Future<Either<BeerFailure, Beer>> updateQuantity(
    int beerId,
    int quantityChange,
  ) async {
    try {
      var token = await _getUserToken();
      var response = await http.patch(
        "$_repositoryAddress/beers/$beerId",
        headers: {
          'Authorization': 'Bearer $token',
        },
        body: "{\"change\": $quantityChange}",
      );
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
        await _localBeerSource.updateQuantity(
          beerId,
          quantityChange,
          withoutQueue: true,
        );
        return right(BeerDto.fromJson(jsonResponse).toDomain());
      } else {
        return left(BeerFailure.serverError());
      }
    } catch (_) {
      return left(BeerFailure.unexpected());
    }
  }

  @override
  Future<Either<BeerFailure, Beer>> updateBeer(
    int beerId,
    String name,
    String productCode,
    double price,
  ) async {
    try {
      var token = await _getUserToken();
      var response = await http.post(
        "$_repositoryAddress/beers/$beerId",
        headers: {
          'Authorization': 'Bearer $token',
        },
        body:
            '{"name": "$name", "productCode": "$productCode", "price": $price}',
      );
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
        await _localBeerSource.updateBeer(
          beerId,
          name,
          productCode,
          price,
          withoutQueue: true,
        );
        return right(BeerDto.fromJson(jsonResponse).toDomain());
      } else {
        return left(BeerFailure.serverError());
      }
    } catch (_) {
      return left(BeerFailure.unexpected());
    }
  }

  @override
  Future<Either<BeerFailure, Unit>> deleteBeer(
    int beerId,
  ) async {
    try {
      var token = await _getUserToken();
      var response = await http.delete(
        "$_repositoryAddress/beers/$beerId",
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        await _localBeerSource.deleteBeer(
          beerId,
          withoutQueue: true,
        );
        return right(unit);
      } else {
        return left(BeerFailure.serverError());
      }
    } catch (_) {
      return left(BeerFailure.unexpected());
    }
  }

  @override
  Future<Either<BeerFailure, Beer>> registerBeer(
    String name,
    String productCode,
    double price,
  ) async {
    try {
      var token = await _getUserToken();
      var response = await http.post(
        "$_repositoryAddress/beers",
        headers: {
          'Authorization': 'Bearer $token',
        },
        body:
            '{"name": "$name", "productCode": "$productCode", "price": $price}',
      );
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
        _localBeerSource.registerBeer(
          name,
          productCode,
          price,
          withoutQueue: true,
        );
        return right(BeerDto.fromJson(jsonResponse).toDomain());
      } else {
        return left(BeerFailure.unexpected());
      }
    } catch (_) {
      return left(BeerFailure.unexpected());
    }
  }

  Future<String> _getUserToken() async {
    var signInUser = await _authFacade.getSignedInUser();
    return signInUser.fold(
      () => "unauthorized",
      (user) => user.token.getOrElse("unauthorized"),
    );
  }
}
