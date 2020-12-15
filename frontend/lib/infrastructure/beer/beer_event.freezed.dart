// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'beer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BeerEvent _$BeerEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'deleteBeer':
      return DeleteBeer.fromJson(json);
    case 'registerBeer':
      return RegisterBeer.fromJson(json);
    case 'updateBeer':
      return UpdateBeer.fromJson(json);
    case 'updateQuantity':
      return UpdateQunatity.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$BeerEventTearOff {
  const _$BeerEventTearOff();

// ignore: unused_element
  DeleteBeer deleteBeer(int timestamp, int beerId) {
    return DeleteBeer(
      timestamp,
      beerId,
    );
  }

// ignore: unused_element
  RegisterBeer registerBeer(
      int timestamp, int id, String name, String productCode, double price) {
    return RegisterBeer(
      timestamp,
      id,
      name,
      productCode,
      price,
    );
  }

// ignore: unused_element
  UpdateBeer updateBeer(int timestamp, int beerId, String name,
      String productCode, double price) {
    return UpdateBeer(
      timestamp,
      beerId,
      name,
      productCode,
      price,
    );
  }

// ignore: unused_element
  UpdateQunatity updateQuantity(int timestamp, int beerId, int quantityChange) {
    return UpdateQunatity(
      timestamp,
      beerId,
      quantityChange,
    );
  }

// ignore: unused_element
  BeerEvent fromJson(Map<String, Object> json) {
    return BeerEvent.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BeerEvent = _$BeerEventTearOff();

/// @nodoc
mixin _$BeerEvent {
  int get timestamp;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteBeer(int timestamp, int beerId),
    @required
        Result registerBeer(int timestamp, int id, String name,
            String productCode, double price),
    @required
        Result updateBeer(int timestamp, int beerId, String name,
            String productCode, double price),
    @required
        Result updateQuantity(int timestamp, int beerId, int quantityChange),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteBeer(int timestamp, int beerId),
    Result registerBeer(
        int timestamp, int id, String name, String productCode, double price),
    Result updateBeer(int timestamp, int beerId, String name,
        String productCode, double price),
    Result updateQuantity(int timestamp, int beerId, int quantityChange),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteBeer(DeleteBeer value),
    @required Result registerBeer(RegisterBeer value),
    @required Result updateBeer(UpdateBeer value),
    @required Result updateQuantity(UpdateQunatity value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteBeer(DeleteBeer value),
    Result registerBeer(RegisterBeer value),
    Result updateBeer(UpdateBeer value),
    Result updateQuantity(UpdateQunatity value),
    @required Result orElse(),
  });
  Map<String, dynamic> toJson();
  $BeerEventCopyWith<BeerEvent> get copyWith;
}

/// @nodoc
abstract class $BeerEventCopyWith<$Res> {
  factory $BeerEventCopyWith(BeerEvent value, $Res Function(BeerEvent) then) =
      _$BeerEventCopyWithImpl<$Res>;
  $Res call({int timestamp});
}

/// @nodoc
class _$BeerEventCopyWithImpl<$Res> implements $BeerEventCopyWith<$Res> {
  _$BeerEventCopyWithImpl(this._value, this._then);

  final BeerEvent _value;
  // ignore: unused_field
  final $Res Function(BeerEvent) _then;

  @override
  $Res call({
    Object timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as int,
    ));
  }
}

/// @nodoc
abstract class $DeleteBeerCopyWith<$Res> implements $BeerEventCopyWith<$Res> {
  factory $DeleteBeerCopyWith(
          DeleteBeer value, $Res Function(DeleteBeer) then) =
      _$DeleteBeerCopyWithImpl<$Res>;
  @override
  $Res call({int timestamp, int beerId});
}

/// @nodoc
class _$DeleteBeerCopyWithImpl<$Res> extends _$BeerEventCopyWithImpl<$Res>
    implements $DeleteBeerCopyWith<$Res> {
  _$DeleteBeerCopyWithImpl(DeleteBeer _value, $Res Function(DeleteBeer) _then)
      : super(_value, (v) => _then(v as DeleteBeer));

  @override
  DeleteBeer get _value => super._value as DeleteBeer;

  @override
  $Res call({
    Object timestamp = freezed,
    Object beerId = freezed,
  }) {
    return _then(DeleteBeer(
      timestamp == freezed ? _value.timestamp : timestamp as int,
      beerId == freezed ? _value.beerId : beerId as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$DeleteBeer implements DeleteBeer {
  const _$DeleteBeer(this.timestamp, this.beerId)
      : assert(timestamp != null),
        assert(beerId != null);

  factory _$DeleteBeer.fromJson(Map<String, dynamic> json) =>
      _$_$DeleteBeerFromJson(json);

  @override
  final int timestamp;
  @override
  final int beerId;

  @override
  String toString() {
    return 'BeerEvent.deleteBeer(timestamp: $timestamp, beerId: $beerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteBeer &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.beerId, beerId) ||
                const DeepCollectionEquality().equals(other.beerId, beerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(beerId);

  @override
  $DeleteBeerCopyWith<DeleteBeer> get copyWith =>
      _$DeleteBeerCopyWithImpl<DeleteBeer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteBeer(int timestamp, int beerId),
    @required
        Result registerBeer(int timestamp, int id, String name,
            String productCode, double price),
    @required
        Result updateBeer(int timestamp, int beerId, String name,
            String productCode, double price),
    @required
        Result updateQuantity(int timestamp, int beerId, int quantityChange),
  }) {
    assert(deleteBeer != null);
    assert(registerBeer != null);
    assert(updateBeer != null);
    assert(updateQuantity != null);
    return deleteBeer(timestamp, beerId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteBeer(int timestamp, int beerId),
    Result registerBeer(
        int timestamp, int id, String name, String productCode, double price),
    Result updateBeer(int timestamp, int beerId, String name,
        String productCode, double price),
    Result updateQuantity(int timestamp, int beerId, int quantityChange),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteBeer != null) {
      return deleteBeer(timestamp, beerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteBeer(DeleteBeer value),
    @required Result registerBeer(RegisterBeer value),
    @required Result updateBeer(UpdateBeer value),
    @required Result updateQuantity(UpdateQunatity value),
  }) {
    assert(deleteBeer != null);
    assert(registerBeer != null);
    assert(updateBeer != null);
    assert(updateQuantity != null);
    return deleteBeer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteBeer(DeleteBeer value),
    Result registerBeer(RegisterBeer value),
    Result updateBeer(UpdateBeer value),
    Result updateQuantity(UpdateQunatity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteBeer != null) {
      return deleteBeer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$DeleteBeerToJson(this)..['runtimeType'] = 'deleteBeer';
  }
}

abstract class DeleteBeer implements BeerEvent {
  const factory DeleteBeer(int timestamp, int beerId) = _$DeleteBeer;

  factory DeleteBeer.fromJson(Map<String, dynamic> json) =
      _$DeleteBeer.fromJson;

  @override
  int get timestamp;
  int get beerId;
  @override
  $DeleteBeerCopyWith<DeleteBeer> get copyWith;
}

/// @nodoc
abstract class $RegisterBeerCopyWith<$Res> implements $BeerEventCopyWith<$Res> {
  factory $RegisterBeerCopyWith(
          RegisterBeer value, $Res Function(RegisterBeer) then) =
      _$RegisterBeerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int timestamp, int id, String name, String productCode, double price});
}

/// @nodoc
class _$RegisterBeerCopyWithImpl<$Res> extends _$BeerEventCopyWithImpl<$Res>
    implements $RegisterBeerCopyWith<$Res> {
  _$RegisterBeerCopyWithImpl(
      RegisterBeer _value, $Res Function(RegisterBeer) _then)
      : super(_value, (v) => _then(v as RegisterBeer));

  @override
  RegisterBeer get _value => super._value as RegisterBeer;

  @override
  $Res call({
    Object timestamp = freezed,
    Object id = freezed,
    Object name = freezed,
    Object productCode = freezed,
    Object price = freezed,
  }) {
    return _then(RegisterBeer(
      timestamp == freezed ? _value.timestamp : timestamp as int,
      id == freezed ? _value.id : id as int,
      name == freezed ? _value.name : name as String,
      productCode == freezed ? _value.productCode : productCode as String,
      price == freezed ? _value.price : price as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$RegisterBeer implements RegisterBeer {
  const _$RegisterBeer(
      this.timestamp, this.id, this.name, this.productCode, this.price)
      : assert(timestamp != null),
        assert(id != null),
        assert(name != null),
        assert(productCode != null),
        assert(price != null);

  factory _$RegisterBeer.fromJson(Map<String, dynamic> json) =>
      _$_$RegisterBeerFromJson(json);

  @override
  final int timestamp;
  @override
  final int id;
  @override
  final String name;
  @override
  final String productCode;
  @override
  final double price;

  @override
  String toString() {
    return 'BeerEvent.registerBeer(timestamp: $timestamp, id: $id, name: $name, productCode: $productCode, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterBeer &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality()
                    .equals(other.productCode, productCode)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(price);

  @override
  $RegisterBeerCopyWith<RegisterBeer> get copyWith =>
      _$RegisterBeerCopyWithImpl<RegisterBeer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteBeer(int timestamp, int beerId),
    @required
        Result registerBeer(int timestamp, int id, String name,
            String productCode, double price),
    @required
        Result updateBeer(int timestamp, int beerId, String name,
            String productCode, double price),
    @required
        Result updateQuantity(int timestamp, int beerId, int quantityChange),
  }) {
    assert(deleteBeer != null);
    assert(registerBeer != null);
    assert(updateBeer != null);
    assert(updateQuantity != null);
    return registerBeer(timestamp, id, name, productCode, price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteBeer(int timestamp, int beerId),
    Result registerBeer(
        int timestamp, int id, String name, String productCode, double price),
    Result updateBeer(int timestamp, int beerId, String name,
        String productCode, double price),
    Result updateQuantity(int timestamp, int beerId, int quantityChange),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerBeer != null) {
      return registerBeer(timestamp, id, name, productCode, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteBeer(DeleteBeer value),
    @required Result registerBeer(RegisterBeer value),
    @required Result updateBeer(UpdateBeer value),
    @required Result updateQuantity(UpdateQunatity value),
  }) {
    assert(deleteBeer != null);
    assert(registerBeer != null);
    assert(updateBeer != null);
    assert(updateQuantity != null);
    return registerBeer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteBeer(DeleteBeer value),
    Result registerBeer(RegisterBeer value),
    Result updateBeer(UpdateBeer value),
    Result updateQuantity(UpdateQunatity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerBeer != null) {
      return registerBeer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$RegisterBeerToJson(this)..['runtimeType'] = 'registerBeer';
  }
}

abstract class RegisterBeer implements BeerEvent {
  const factory RegisterBeer(int timestamp, int id, String name,
      String productCode, double price) = _$RegisterBeer;

  factory RegisterBeer.fromJson(Map<String, dynamic> json) =
      _$RegisterBeer.fromJson;

  @override
  int get timestamp;
  int get id;
  String get name;
  String get productCode;
  double get price;
  @override
  $RegisterBeerCopyWith<RegisterBeer> get copyWith;
}

/// @nodoc
abstract class $UpdateBeerCopyWith<$Res> implements $BeerEventCopyWith<$Res> {
  factory $UpdateBeerCopyWith(
          UpdateBeer value, $Res Function(UpdateBeer) then) =
      _$UpdateBeerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int timestamp,
      int beerId,
      String name,
      String productCode,
      double price});
}

/// @nodoc
class _$UpdateBeerCopyWithImpl<$Res> extends _$BeerEventCopyWithImpl<$Res>
    implements $UpdateBeerCopyWith<$Res> {
  _$UpdateBeerCopyWithImpl(UpdateBeer _value, $Res Function(UpdateBeer) _then)
      : super(_value, (v) => _then(v as UpdateBeer));

  @override
  UpdateBeer get _value => super._value as UpdateBeer;

  @override
  $Res call({
    Object timestamp = freezed,
    Object beerId = freezed,
    Object name = freezed,
    Object productCode = freezed,
    Object price = freezed,
  }) {
    return _then(UpdateBeer(
      timestamp == freezed ? _value.timestamp : timestamp as int,
      beerId == freezed ? _value.beerId : beerId as int,
      name == freezed ? _value.name : name as String,
      productCode == freezed ? _value.productCode : productCode as String,
      price == freezed ? _value.price : price as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$UpdateBeer implements UpdateBeer {
  const _$UpdateBeer(
      this.timestamp, this.beerId, this.name, this.productCode, this.price)
      : assert(timestamp != null),
        assert(beerId != null),
        assert(name != null),
        assert(productCode != null),
        assert(price != null);

  factory _$UpdateBeer.fromJson(Map<String, dynamic> json) =>
      _$_$UpdateBeerFromJson(json);

  @override
  final int timestamp;
  @override
  final int beerId;
  @override
  final String name;
  @override
  final String productCode;
  @override
  final double price;

  @override
  String toString() {
    return 'BeerEvent.updateBeer(timestamp: $timestamp, beerId: $beerId, name: $name, productCode: $productCode, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateBeer &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.beerId, beerId) ||
                const DeepCollectionEquality().equals(other.beerId, beerId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.productCode, productCode) ||
                const DeepCollectionEquality()
                    .equals(other.productCode, productCode)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(beerId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(productCode) ^
      const DeepCollectionEquality().hash(price);

  @override
  $UpdateBeerCopyWith<UpdateBeer> get copyWith =>
      _$UpdateBeerCopyWithImpl<UpdateBeer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteBeer(int timestamp, int beerId),
    @required
        Result registerBeer(int timestamp, int id, String name,
            String productCode, double price),
    @required
        Result updateBeer(int timestamp, int beerId, String name,
            String productCode, double price),
    @required
        Result updateQuantity(int timestamp, int beerId, int quantityChange),
  }) {
    assert(deleteBeer != null);
    assert(registerBeer != null);
    assert(updateBeer != null);
    assert(updateQuantity != null);
    return updateBeer(timestamp, beerId, name, productCode, price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteBeer(int timestamp, int beerId),
    Result registerBeer(
        int timestamp, int id, String name, String productCode, double price),
    Result updateBeer(int timestamp, int beerId, String name,
        String productCode, double price),
    Result updateQuantity(int timestamp, int beerId, int quantityChange),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateBeer != null) {
      return updateBeer(timestamp, beerId, name, productCode, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteBeer(DeleteBeer value),
    @required Result registerBeer(RegisterBeer value),
    @required Result updateBeer(UpdateBeer value),
    @required Result updateQuantity(UpdateQunatity value),
  }) {
    assert(deleteBeer != null);
    assert(registerBeer != null);
    assert(updateBeer != null);
    assert(updateQuantity != null);
    return updateBeer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteBeer(DeleteBeer value),
    Result registerBeer(RegisterBeer value),
    Result updateBeer(UpdateBeer value),
    Result updateQuantity(UpdateQunatity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateBeer != null) {
      return updateBeer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UpdateBeerToJson(this)..['runtimeType'] = 'updateBeer';
  }
}

abstract class UpdateBeer implements BeerEvent {
  const factory UpdateBeer(int timestamp, int beerId, String name,
      String productCode, double price) = _$UpdateBeer;

  factory UpdateBeer.fromJson(Map<String, dynamic> json) =
      _$UpdateBeer.fromJson;

  @override
  int get timestamp;
  int get beerId;
  String get name;
  String get productCode;
  double get price;
  @override
  $UpdateBeerCopyWith<UpdateBeer> get copyWith;
}

/// @nodoc
abstract class $UpdateQunatityCopyWith<$Res>
    implements $BeerEventCopyWith<$Res> {
  factory $UpdateQunatityCopyWith(
          UpdateQunatity value, $Res Function(UpdateQunatity) then) =
      _$UpdateQunatityCopyWithImpl<$Res>;
  @override
  $Res call({int timestamp, int beerId, int quantityChange});
}

/// @nodoc
class _$UpdateQunatityCopyWithImpl<$Res> extends _$BeerEventCopyWithImpl<$Res>
    implements $UpdateQunatityCopyWith<$Res> {
  _$UpdateQunatityCopyWithImpl(
      UpdateQunatity _value, $Res Function(UpdateQunatity) _then)
      : super(_value, (v) => _then(v as UpdateQunatity));

  @override
  UpdateQunatity get _value => super._value as UpdateQunatity;

  @override
  $Res call({
    Object timestamp = freezed,
    Object beerId = freezed,
    Object quantityChange = freezed,
  }) {
    return _then(UpdateQunatity(
      timestamp == freezed ? _value.timestamp : timestamp as int,
      beerId == freezed ? _value.beerId : beerId as int,
      quantityChange == freezed ? _value.quantityChange : quantityChange as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$UpdateQunatity implements UpdateQunatity {
  const _$UpdateQunatity(this.timestamp, this.beerId, this.quantityChange)
      : assert(timestamp != null),
        assert(beerId != null),
        assert(quantityChange != null);

  factory _$UpdateQunatity.fromJson(Map<String, dynamic> json) =>
      _$_$UpdateQunatityFromJson(json);

  @override
  final int timestamp;
  @override
  final int beerId;
  @override
  final int quantityChange;

  @override
  String toString() {
    return 'BeerEvent.updateQuantity(timestamp: $timestamp, beerId: $beerId, quantityChange: $quantityChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateQunatity &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.beerId, beerId) ||
                const DeepCollectionEquality().equals(other.beerId, beerId)) &&
            (identical(other.quantityChange, quantityChange) ||
                const DeepCollectionEquality()
                    .equals(other.quantityChange, quantityChange)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(beerId) ^
      const DeepCollectionEquality().hash(quantityChange);

  @override
  $UpdateQunatityCopyWith<UpdateQunatity> get copyWith =>
      _$UpdateQunatityCopyWithImpl<UpdateQunatity>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleteBeer(int timestamp, int beerId),
    @required
        Result registerBeer(int timestamp, int id, String name,
            String productCode, double price),
    @required
        Result updateBeer(int timestamp, int beerId, String name,
            String productCode, double price),
    @required
        Result updateQuantity(int timestamp, int beerId, int quantityChange),
  }) {
    assert(deleteBeer != null);
    assert(registerBeer != null);
    assert(updateBeer != null);
    assert(updateQuantity != null);
    return updateQuantity(timestamp, beerId, quantityChange);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleteBeer(int timestamp, int beerId),
    Result registerBeer(
        int timestamp, int id, String name, String productCode, double price),
    Result updateBeer(int timestamp, int beerId, String name,
        String productCode, double price),
    Result updateQuantity(int timestamp, int beerId, int quantityChange),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateQuantity != null) {
      return updateQuantity(timestamp, beerId, quantityChange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleteBeer(DeleteBeer value),
    @required Result registerBeer(RegisterBeer value),
    @required Result updateBeer(UpdateBeer value),
    @required Result updateQuantity(UpdateQunatity value),
  }) {
    assert(deleteBeer != null);
    assert(registerBeer != null);
    assert(updateBeer != null);
    assert(updateQuantity != null);
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleteBeer(DeleteBeer value),
    Result registerBeer(RegisterBeer value),
    Result updateBeer(UpdateBeer value),
    Result updateQuantity(UpdateQunatity value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UpdateQunatityToJson(this)..['runtimeType'] = 'updateQuantity';
  }
}

abstract class UpdateQunatity implements BeerEvent {
  const factory UpdateQunatity(int timestamp, int beerId, int quantityChange) =
      _$UpdateQunatity;

  factory UpdateQunatity.fromJson(Map<String, dynamic> json) =
      _$UpdateQunatity.fromJson;

  @override
  int get timestamp;
  int get beerId;
  int get quantityChange;
  @override
  $UpdateQunatityCopyWith<UpdateQunatity> get copyWith;
}
