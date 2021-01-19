import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/beer_repository_result.dart';
import 'package:dartz/dartz.dart';

abstract class IBeerRepository {
  Future<BeerRepositoryResult<List<Beer>>> getAll();
  Future<BeerRepositoryResult<Beer>> updateQuantity(
      int beerId, int quantityChange);
  Future<BeerRepositoryResult<Unit>> deleteBeer(int beerId);
  Future<BeerRepositoryResult<Beer>> updateBeer(int beerId, String name,
      String productCode, double price, List<String> photos);
  Future<BeerRepositoryResult<Beer>> registerBeer(
      String name, String productCode, double price, List<String> photos);
}
