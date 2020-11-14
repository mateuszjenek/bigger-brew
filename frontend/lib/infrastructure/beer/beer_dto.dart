import 'package:bigger_brew/domain/beer/beer.dart';
import 'package:bigger_brew/domain/beer/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_dto.freezed.dart';
part 'beer_dto.g.dart';

@freezed
abstract class BeerDto with _$BeerDto {
  factory BeerDto({
    @required int id,
    @required String name,
    @required String productCode,
    @required double price,
    @required int quantity,
  }) = _BeerDto;

  factory BeerDto.fromJson(Map<String, dynamic> json) =>
      _$BeerDtoFromJson(json);
}

extension BeerDtoX on BeerDto {
  Beer toDomain() {
    return Beer(
      id: ID(id),
      name: BeerName(name),
      productCode: ProductCode(productCode),
      quantity: Quantity(quantity),
      price: Price(price),
    );
  }
}
