import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/beer_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IBeerSource {
  static const key = "beers";

  Future<Either<BeerFailure, Unit>> deleteBeer(
    int beerId,
  );
  Future<Either<BeerFailure, List<Beer>>> getAll();
  Future<Either<BeerFailure, Beer>> registerBeer(
    String name,
    String productCode,
    double price,
    List<String> photos,
  );
  Future<Either<BeerFailure, Beer>> updateBeer(
    int beerId,
    String name,
    String productCode,
    double price,
    List<String> photos,
  );
  Future<Either<BeerFailure, Beer>> updateQuantity(
    int beerId,
    int quantityChange,
  );
}
