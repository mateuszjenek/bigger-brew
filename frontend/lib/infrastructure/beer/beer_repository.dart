import 'package:bigger_brew/domain/beer/beer_repository_result.dart';
import 'package:bigger_brew/domain/configuration/I_configuration_repository.dart';
import 'package:bigger_brew/infrastructure/beer/beer_event_queue.dart';
import 'package:bigger_brew/infrastructure/beer/i_beer_source.dart';
import 'package:bigger_brew/infrastructure/beer/sources/local_beer_source.dart';
import 'package:bigger_brew/infrastructure/beer/sources/remote_beer_source.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/i_beer_repository.dart';

@prod
@LazySingleton(as: IBeerRepository)
class BeerRepository implements IBeerRepository {
  final LocalBeerSource _localBeerSource;
  final RemoteBeerSource _remoteBeerSource;
  final IConfigurationRepository _configurationRepository;
  final BeerEventQueue _eventQueue;

  BeerRepository(
    this._localBeerSource,
    this._remoteBeerSource,
    this._configurationRepository,
    this._eventQueue,
  );

  @override
  Future<BeerRepositoryResult<Unit>> deleteBeer(int beerId) async {
    var source = await _getSource();
    var result = await source.value1.deleteBeer(beerId);
    return BeerRepositoryResult(result, source.value2, source.value3);
  }

  @override
  Future<BeerRepositoryResult<List<Beer>>> getAll() async {
    var source = await _getSource();
    var result = await source.value1.getAll();
    return BeerRepositoryResult(result, source.value2, source.value3);
  }

  @override
  Future<BeerRepositoryResult<Beer>> registerBeer(
    String name,
    String productCode,
    double price,
  ) async {
    var source = await _getSource();
    var result = await source.value1.registerBeer(name, productCode, price);
    return BeerRepositoryResult(result, source.value2, source.value3);
  }

  @override
  Future<BeerRepositoryResult<Beer>> updateBeer(
    int beerId,
    String name,
    String productCode,
    double price,
  ) async {
    var source = await _getSource();
    var result =
        await source.value1.updateBeer(beerId, name, productCode, price);
    return BeerRepositoryResult(result, source.value2, source.value3);
  }

  @override
  Future<BeerRepositoryResult<Beer>> updateQuantity(
    int beerId,
    int quantityChange,
  ) async {
    var source = await _getSource();
    var result = await source.value1.updateQuantity(beerId, quantityChange);
    return BeerRepositoryResult(result, source.value2, source.value3);
  }

  Future<Tuple3<IBeerSource, BeerRepositoryMode, bool>> _getSource() async {
    var config = await _configurationRepository.get();

    if (config.isOfflineMode || !(await _remoteBeerSource.isAvaliable())) {
      return Tuple3(_localBeerSource, BeerRepositoryMode.OFFLINE, false);
    }
    var isAnyQueuedEventFailed = await _performAllQueuedEvents();
    return Tuple3(
      _remoteBeerSource,
      BeerRepositoryMode.ONLINE,
      isAnyQueuedEventFailed,
    );
  }

  Future<bool> _performAllQueuedEvents() async {
    var isAnyEventFailed = false;
    var events = await _eventQueue.popAll();
    for (var event in events) {
      await event.map(
        deleteBeer: (event) async {
          var result = await _remoteBeerSource.deleteBeer(event.beerId);
          if (result.isLeft()) isAnyEventFailed = true;
        },
        registerBeer: (event) async {
          var result = await _remoteBeerSource.registerBeer(
            event.name,
            event.productCode,
            event.price,
          );
          if (result.isLeft()) isAnyEventFailed = true;
        },
        updateBeer: (event) async {
          var result = await _remoteBeerSource.updateBeer(
            event.beerId,
            event.name,
            event.productCode,
            event.price,
          );
          if (result.isLeft()) isAnyEventFailed = true;
        },
        updateQuantity: (event) async {
          var result = await _remoteBeerSource.updateQuantity(
            event.beerId,
            event.quantityChange,
          );
          if (result.isLeft()) isAnyEventFailed = true;
        },
      );
    }
    return isAnyEventFailed;
  }
}
