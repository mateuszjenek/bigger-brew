import 'package:dartz/dartz.dart';

import 'beer.dart';
import 'beer_failure.dart';

abstract class IBeerRepository {
  Future<Either<BeerFailure, List<Beer>>> getAll();
  Future<Either<BeerFailure, Beer>> updateQuantity(
      int beerId, int quantityChange);
  Future<Either<BeerFailure, Unit>> deleteBeer(int beerId);
  Future<Either<BeerFailure, Beer>> updateBeer(
      int beerId, String name, String productCode, double price);
  Future<Either<BeerFailure, Beer>> registerBeer(
      String name, String productCode, double price);
}
