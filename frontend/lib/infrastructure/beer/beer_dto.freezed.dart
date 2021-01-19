// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'beer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BeerDto _$BeerDtoFromJson(Map<String, dynamic> json) {
  return _BeerDto.fromJson(json);
}

/// @nodoc
class _$BeerDtoTearOff {
  const _$BeerDtoTearOff();

// ignore: unused_element
  _BeerDto call(
      {@required int id,
      @required String name,
      @required String productCode,
      @required double price,
      @required int quantity,
      @required List<String> photos}) {
    return _BeerDto(
      id: id,
      name: name,
      productCode: productCode,
      price: price,
      quantity: quantity,
      photos: photos,
    );
  }

// ignore: unused_element
  BeerDto fromJson(Map<String, Object> json) {
    return BeerDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BeerDto = _$BeerDtoTearOff();

/// @nodoc
mixin _$BeerDto {
  int get id;
  String get name;
  String get productCode;
  double get price;
  int get quantity;
  List<String> get photos;

  Map<String, dynamic> toJson();
  $BeerDtoCopyWith<BeerDto> get copyWith;
}

/// @nodoc
abstract class $BeerDtoCopyWith<$Res> {
  factory $BeerDtoCopyWith(BeerDto value, $Res Function(BeerDto) then) =
      _$BeerDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String productCode,
      double price,
      int quantity,
      List<String> photos});
}

/// @nodoc
class _$BeerDtoCopyWithImpl<$Res> implements $BeerDtoCopyWith<$Res> {
  _$BeerDtoCopyWithImpl(this._value, this._then);

  final BeerDto _value;
  // ignore: unused_field
  final $Res Function(BeerDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object productCode = freezed,
    Object price = freezed,
    Object quantity = freezed,
    Object photos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      productCode:
          productCode == freezed ? _value.productCode : productCode as String,
      price: price == freezed ? _value.price : price as double,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      photos: photos == freezed ? _value.photos : photos as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$BeerDtoCopyWith<$Res> implements $BeerDtoCopyWith<$Res> {
  factory _$BeerDtoCopyWith(_BeerDto value, $Res Function(_BeerDto) then) =
      __$BeerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String productCode,
      double price,
      int quantity,
      List<String> photos});
}

/// @nodoc
class __$BeerDtoCopyWithImpl<$Res> extends _$BeerDtoCopyWithImpl<$Res>
    implements _$BeerDtoCopyWith<$Res> {
  __$BeerDtoCopyWithImpl(_BeerDto _value, $Res Function(_BeerDto) _then)
      : super(_value, (v) => _then(v as _BeerDto));

  @override
  _BeerDto get _value => super._value as _BeerDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object productCode = freezed,
    Object price = freezed,
    Object quantity = freezed,
    Object photos = freezed,
  }) {
    return _then(_BeerDto(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      productCode:
          productCode == freezed ? _value.productCode : productCode as String,
      price: price == freezed ? _value.price : price as double,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      photos: photos == freezed ? _value.photos : photos as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BeerDto implements _BeerDto {
  _$_BeerDto(
      {@required this.id,
      @required this.name,
      @required this.productCode,
      @required this.price,
      @required this.quantity,
      @required this.photos})
      : assert(id != null),
        assert(name != null),
        assert(productCode != null),
        assert(price != null),
        assert(quantity != null),
        assert(photos != null);

  factory _$_BeerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_BeerDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String productCode;
  @override
  final double price;
  @override
  final int quantity;
  @override
  final List<String> photos;

  @override
  String toString() {
    return 'BeerDto(id: $id, name: $name, productCode: $productCode, price: $price, quantity: $quantity, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BeerDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality()
                    .equals(other.productCode, productCode)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(photos);

  @override
  _$BeerDtoCopyWith<_BeerDto> get copyWith =>
      __$BeerDtoCopyWithImpl<_BeerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BeerDtoToJson(this);
  }
}

abstract class _BeerDto implements BeerDto {
  factory _BeerDto(
      {@required int id,
      @required String name,
      @required String productCode,
      @required double price,
      @required int quantity,
      @required List<String> photos}) = _$_BeerDto;

  factory _BeerDto.fromJson(Map<String, dynamic> json) = _$_BeerDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get productCode;
  @override
  double get price;
  @override
  int get quantity;
  @override
  List<String> get photos;
  @override
  _$BeerDtoCopyWith<_BeerDto> get copyWith;
}
