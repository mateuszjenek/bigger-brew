import 'dart:convert';

import 'package:bigger_brew/domain/auth/i_auth_facade.dart';
import 'package:bigger_brew/infrastructure/beer/beer_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/beer_failure.dart';
import 'package:bigger_brew/domain/beer/i_beer_repository.dart';

@prod
@LazySingleton(as: IBeerRepository)
class BeerRepository implements IBeerRepository {
  static const String _repositoryAddress = "http://localhost";
  final IAuthFacade _authFacade;

  BeerRepository(this._authFacade);

  @override
  Future<Either<BeerFailure, List<Beer>>> getAll() async {
    var signInUser = await _authFacade.getSignedInUser();
    return signInUser.fold(
      () => left(BeerFailure.unexpected()),
      (user) async {
        var response = await get("$_repositoryAddress/beers", headers: {
          'Authorization': 'Bearer ${user.token.getOrCrash()}',
        });
        if (response.statusCode == 200) {
          List<dynamic> jsonResponse =
              jsonDecode(utf8.decode(response.bodyBytes));
          List<BeerDto> beersResponse =
              jsonResponse.map((json) => BeerDto.fromJson(json)).toList();
          return right(beersResponse.map((e) => e.toDomain()).toList());
        } else {
          return left(BeerFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<BeerFailure, Beer>> updateQuantity(
      int beerId, int quantityChange) async {
    var signInUser = await _authFacade.getSignedInUser();
    return signInUser.fold(
      () => left(BeerFailure.unexpected()),
      (user) async {
        var response = await patch(
          "$_repositoryAddress/beers/$beerId",
          headers: {
            'Authorization': 'Bearer ${user.token.getOrCrash()}',
          },
          body: "{\"change\": $quantityChange}",
        );
        if (response.statusCode == 200) {
          var jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
          return right(BeerDto.fromJson(jsonResponse).toDomain());
        } else {
          return left(BeerFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<BeerFailure, Unit>> deleteBeer(int beerId) async {
    var signInUser = await _authFacade.getSignedInUser();
    return signInUser.fold(
      () => left(BeerFailure.unexpected()),
      (user) async {
        var response = await delete(
          "$_repositoryAddress/beers/$beerId",
          headers: {
            'Authorization': 'Bearer ${user.token.getOrCrash()}',
          },
        );
        if (response.statusCode == 200) {
          return right(unit);
        } else {
          return left(BeerFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<BeerFailure, Beer>> updateBeer(
      int beerId, String name, String productCode, double price) async {
    var signInUser = await _authFacade.getSignedInUser();
    return signInUser.fold(
      () => left(BeerFailure.unexpected()),
      (user) async {
        var response = await post(
          "$_repositoryAddress/beers/$beerId",
          headers: {
            'Authorization': 'Bearer ${user.token.getOrCrash()}',
          },
          body:
              '{"name": "$name", "productCode": "$productCode", "price": $price}',
        );
        if (response.statusCode == 200) {
          var jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
          return right(BeerDto.fromJson(jsonResponse).toDomain());
        } else {
          return left(BeerFailure.unexpected());
        }
      },
    );
  }

  @override
  Future<Either<BeerFailure, Beer>> registerBeer(
      String name, String productCode, double price) async {
    var signInUser = await _authFacade.getSignedInUser();
    return signInUser.fold(
      () => left(BeerFailure.unexpected()),
      (user) async {
        var response = await post(
          "$_repositoryAddress/beers",
          headers: {
            'Authorization': 'Bearer ${user.token.getOrCrash()}',
          },
          body:
              '{"name": "$name", "productCode": "$productCode", "price": $price}',
        );
        if (response.statusCode == 200) {
          var jsonResponse = jsonDecode(utf8.decode(response.bodyBytes));
          return right(BeerDto.fromJson(jsonResponse).toDomain());
        } else {
          return left(BeerFailure.unexpected());
        }
      },
    );
  }
}
