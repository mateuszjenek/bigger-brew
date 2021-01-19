// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeleteBeer _$_$DeleteBeerFromJson(Map<String, dynamic> json) {
  return _$DeleteBeer(
    json['timestamp'] as int,
    json['beerId'] as int,
  );
}

Map<String, dynamic> _$_$DeleteBeerToJson(_$DeleteBeer instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'beerId': instance.beerId,
    };

_$RegisterBeer _$_$RegisterBeerFromJson(Map<String, dynamic> json) {
  return _$RegisterBeer(
    json['timestamp'] as int,
    json['id'] as int,
    json['name'] as String,
    json['productCode'] as String,
    (json['price'] as num)?.toDouble(),
    (json['photos'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$RegisterBeerToJson(_$RegisterBeer instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'id': instance.id,
      'name': instance.name,
      'productCode': instance.productCode,
      'price': instance.price,
      'photos': instance.photos,
    };

_$UpdateBeer _$_$UpdateBeerFromJson(Map<String, dynamic> json) {
  return _$UpdateBeer(
    json['timestamp'] as int,
    json['beerId'] as int,
    json['name'] as String,
    json['productCode'] as String,
    (json['price'] as num)?.toDouble(),
    (json['photos'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$UpdateBeerToJson(_$UpdateBeer instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'beerId': instance.beerId,
      'name': instance.name,
      'productCode': instance.productCode,
      'price': instance.price,
      'photos': instance.photos,
    };

_$UpdateQunatity _$_$UpdateQunatityFromJson(Map<String, dynamic> json) {
  return _$UpdateQunatity(
    json['timestamp'] as int,
    json['beerId'] as int,
    json['quantityChange'] as int,
  );
}

Map<String, dynamic> _$_$UpdateQunatityToJson(_$UpdateQunatity instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'beerId': instance.beerId,
      'quantityChange': instance.quantityChange,
    };
