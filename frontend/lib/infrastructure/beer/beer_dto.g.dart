// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeerDto _$_$_BeerDtoFromJson(Map<String, dynamic> json) {
  return _$_BeerDto(
    id: json['id'] as int,
    name: json['name'] as String,
    productCode: json['productCode'] as String,
    price: (json['price'] as num)?.toDouble(),
    quantity: json['quantity'] as int,
    photos: (json['photos'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_BeerDtoToJson(_$_BeerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'productCode': instance.productCode,
      'price': instance.price,
      'quantity': instance.quantity,
      'photos': instance.photos,
    };
