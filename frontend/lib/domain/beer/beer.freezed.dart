// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'beer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BeerTearOff {
  const _$BeerTearOff();

// ignore: unused_element
  _Beer call(
      {@required ID id,
      @required BeerName name,
      @required ProductCode productCode,
      @required Quantity quantity,
      @required Price price}) {
    return _Beer(
      id: id,
      name: name,
      productCode: productCode,
      quantity: quantity,
      price: price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Beer = _$BeerTearOff();

/// @nodoc
mixin _$Beer {
  ID get id;
  BeerName get name;
  ProductCode get productCode;
  Quantity get quantity;
  Price get price;

  $BeerCopyWith<Beer> get copyWith;
}

/// @nodoc
abstract class $BeerCopyWith<$Res> {
  factory $BeerCopyWith(Beer value, $Res Function(Beer) then) =
      _$BeerCopyWithImpl<$Res>;
  $Res call(
      {ID id,
      BeerName name,
      ProductCode productCode,
      Quantity quantity,
      Price price});
}

/// @nodoc
class _$BeerCopyWithImpl<$Res> implements $BeerCopyWith<$Res> {
  _$BeerCopyWithImpl(this._value, this._then);

  final Beer _value;
  // ignore: unused_field
  final $Res Function(Beer) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object productCode = freezed,
    Object quantity = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as ID,
      name: name == freezed ? _value.name : name as BeerName,
      productCode: productCode == freezed
          ? _value.productCode
          : productCode as ProductCode,
      quantity: quantity == freezed ? _value.quantity : quantity as Quantity,
      price: price == freezed ? _value.price : price as Price,
    ));
  }
}

/// @nodoc
abstract class _$BeerCopyWith<$Res> implements $BeerCopyWith<$Res> {
  factory _$BeerCopyWith(_Beer value, $Res Function(_Beer) then) =
      __$BeerCopyWithImpl<$Res>;
  @override
  $Res call(
      {ID id,
      BeerName name,
      ProductCode productCode,
      Quantity quantity,
      Price price});
}

/// @nodoc
class __$BeerCopyWithImpl<$Res> extends _$BeerCopyWithImpl<$Res>
    implements _$BeerCopyWith<$Res> {
  __$BeerCopyWithImpl(_Beer _value, $Res Function(_Beer) _then)
      : super(_value, (v) => _then(v as _Beer));

  @override
  _Beer get _value => super._value as _Beer;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object productCode = freezed,
    Object quantity = freezed,
    Object price = freezed,
  }) {
    return _then(_Beer(
      id: id == freezed ? _value.id : id as ID,
      name: name == freezed ? _value.name : name as BeerName,
      productCode: productCode == freezed
          ? _value.productCode
          : productCode as ProductCode,
      quantity: quantity == freezed ? _value.quantity : quantity as Quantity,
      price: price == freezed ? _value.price : price as Price,
    ));
  }
}

/// @nodoc
class _$_Beer implements _Beer {
  const _$_Beer(
      {@required this.id,
      @required this.name,
      @required this.productCode,
      @required this.quantity,
      @required this.price})
      : assert(id != null),
        assert(name != null),
        assert(productCode != null),
        assert(quantity != null),
        assert(price != null);

  @override
  final ID id;
  @override
  final BeerName name;
  @override
  final ProductCode productCode;
  @override
  final Quantity quantity;
  @override
  final Price price;

  @override
  String toString() {
    return 'Beer(id: $id, name: $name, productCode: $productCode, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Beer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality()
                    .equals(other.productCode, productCode)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$BeerCopyWith<_Beer> get copyWith =>
      __$BeerCopyWithImpl<_Beer>(this, _$identity);
}

abstract class _Beer implements Beer {
  const factory _Beer(
      {@required ID id,
      @required BeerName name,
      @required ProductCode productCode,
      @required Quantity quantity,
      @required Price price}) = _$_Beer;

  @override
  ID get id;
  @override
  BeerName get name;
  @override
  ProductCode get productCode;
  @override
  Quantity get quantity;
  @override
  Price get price;
  @override
  _$BeerCopyWith<_Beer> get copyWith;
}
