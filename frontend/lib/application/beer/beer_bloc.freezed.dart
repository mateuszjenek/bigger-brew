// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'beer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BeerEventTearOff {
  const _$BeerEventTearOff();

// ignore: unused_element
  _IncrementQuantity incrementQuantity() {
    return const _IncrementQuantity();
  }

// ignore: unused_element
  _DecrementQuantity decrementQuantity() {
    return const _DecrementQuantity();
  }

// ignore: unused_element
  _WaitForUpdate updateQuantity() {
    return const _WaitForUpdate();
  }

// ignore: unused_element
  _UpdateBeer updateBeer(String name, String code, double price) {
    return _UpdateBeer(
      name,
      code,
      price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BeerEvent = _$BeerEventTearOff();

/// @nodoc
mixin _$BeerEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result incrementQuantity(),
    @required Result decrementQuantity(),
    @required Result updateQuantity(),
    @required Result updateBeer(String name, String code, double price),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result incrementQuantity(),
    Result decrementQuantity(),
    Result updateQuantity(),
    Result updateBeer(String name, String code, double price),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result incrementQuantity(_IncrementQuantity value),
    @required Result decrementQuantity(_DecrementQuantity value),
    @required Result updateQuantity(_WaitForUpdate value),
    @required Result updateBeer(_UpdateBeer value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result incrementQuantity(_IncrementQuantity value),
    Result decrementQuantity(_DecrementQuantity value),
    Result updateQuantity(_WaitForUpdate value),
    Result updateBeer(_UpdateBeer value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BeerEventCopyWith<$Res> {
  factory $BeerEventCopyWith(BeerEvent value, $Res Function(BeerEvent) then) =
      _$BeerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BeerEventCopyWithImpl<$Res> implements $BeerEventCopyWith<$Res> {
  _$BeerEventCopyWithImpl(this._value, this._then);

  final BeerEvent _value;
  // ignore: unused_field
  final $Res Function(BeerEvent) _then;
}

/// @nodoc
abstract class _$IncrementQuantityCopyWith<$Res> {
  factory _$IncrementQuantityCopyWith(
          _IncrementQuantity value, $Res Function(_IncrementQuantity) then) =
      __$IncrementQuantityCopyWithImpl<$Res>;
}

/// @nodoc
class __$IncrementQuantityCopyWithImpl<$Res>
    extends _$BeerEventCopyWithImpl<$Res>
    implements _$IncrementQuantityCopyWith<$Res> {
  __$IncrementQuantityCopyWithImpl(
      _IncrementQuantity _value, $Res Function(_IncrementQuantity) _then)
      : super(_value, (v) => _then(v as _IncrementQuantity));

  @override
  _IncrementQuantity get _value => super._value as _IncrementQuantity;
}

/// @nodoc
class _$_IncrementQuantity implements _IncrementQuantity {
  const _$_IncrementQuantity();

  @override
  String toString() {
    return 'BeerEvent.incrementQuantity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _IncrementQuantity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result incrementQuantity(),
    @required Result decrementQuantity(),
    @required Result updateQuantity(),
    @required Result updateBeer(String name, String code, double price),
  }) {
    assert(incrementQuantity != null);
    assert(decrementQuantity != null);
    assert(updateQuantity != null);
    assert(updateBeer != null);
    return incrementQuantity();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result incrementQuantity(),
    Result decrementQuantity(),
    Result updateQuantity(),
    Result updateBeer(String name, String code, double price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incrementQuantity != null) {
      return incrementQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result incrementQuantity(_IncrementQuantity value),
    @required Result decrementQuantity(_DecrementQuantity value),
    @required Result updateQuantity(_WaitForUpdate value),
    @required Result updateBeer(_UpdateBeer value),
  }) {
    assert(incrementQuantity != null);
    assert(decrementQuantity != null);
    assert(updateQuantity != null);
    assert(updateBeer != null);
    return incrementQuantity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result incrementQuantity(_IncrementQuantity value),
    Result decrementQuantity(_DecrementQuantity value),
    Result updateQuantity(_WaitForUpdate value),
    Result updateBeer(_UpdateBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (incrementQuantity != null) {
      return incrementQuantity(this);
    }
    return orElse();
  }
}

abstract class _IncrementQuantity implements BeerEvent {
  const factory _IncrementQuantity() = _$_IncrementQuantity;
}

/// @nodoc
abstract class _$DecrementQuantityCopyWith<$Res> {
  factory _$DecrementQuantityCopyWith(
          _DecrementQuantity value, $Res Function(_DecrementQuantity) then) =
      __$DecrementQuantityCopyWithImpl<$Res>;
}

/// @nodoc
class __$DecrementQuantityCopyWithImpl<$Res>
    extends _$BeerEventCopyWithImpl<$Res>
    implements _$DecrementQuantityCopyWith<$Res> {
  __$DecrementQuantityCopyWithImpl(
      _DecrementQuantity _value, $Res Function(_DecrementQuantity) _then)
      : super(_value, (v) => _then(v as _DecrementQuantity));

  @override
  _DecrementQuantity get _value => super._value as _DecrementQuantity;
}

/// @nodoc
class _$_DecrementQuantity implements _DecrementQuantity {
  const _$_DecrementQuantity();

  @override
  String toString() {
    return 'BeerEvent.decrementQuantity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DecrementQuantity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result incrementQuantity(),
    @required Result decrementQuantity(),
    @required Result updateQuantity(),
    @required Result updateBeer(String name, String code, double price),
  }) {
    assert(incrementQuantity != null);
    assert(decrementQuantity != null);
    assert(updateQuantity != null);
    assert(updateBeer != null);
    return decrementQuantity();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result incrementQuantity(),
    Result decrementQuantity(),
    Result updateQuantity(),
    Result updateBeer(String name, String code, double price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decrementQuantity != null) {
      return decrementQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result incrementQuantity(_IncrementQuantity value),
    @required Result decrementQuantity(_DecrementQuantity value),
    @required Result updateQuantity(_WaitForUpdate value),
    @required Result updateBeer(_UpdateBeer value),
  }) {
    assert(incrementQuantity != null);
    assert(decrementQuantity != null);
    assert(updateQuantity != null);
    assert(updateBeer != null);
    return decrementQuantity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result incrementQuantity(_IncrementQuantity value),
    Result decrementQuantity(_DecrementQuantity value),
    Result updateQuantity(_WaitForUpdate value),
    Result updateBeer(_UpdateBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (decrementQuantity != null) {
      return decrementQuantity(this);
    }
    return orElse();
  }
}

abstract class _DecrementQuantity implements BeerEvent {
  const factory _DecrementQuantity() = _$_DecrementQuantity;
}

/// @nodoc
abstract class _$WaitForUpdateCopyWith<$Res> {
  factory _$WaitForUpdateCopyWith(
          _WaitForUpdate value, $Res Function(_WaitForUpdate) then) =
      __$WaitForUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$WaitForUpdateCopyWithImpl<$Res> extends _$BeerEventCopyWithImpl<$Res>
    implements _$WaitForUpdateCopyWith<$Res> {
  __$WaitForUpdateCopyWithImpl(
      _WaitForUpdate _value, $Res Function(_WaitForUpdate) _then)
      : super(_value, (v) => _then(v as _WaitForUpdate));

  @override
  _WaitForUpdate get _value => super._value as _WaitForUpdate;
}

/// @nodoc
class _$_WaitForUpdate implements _WaitForUpdate {
  const _$_WaitForUpdate();

  @override
  String toString() {
    return 'BeerEvent.updateQuantity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WaitForUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result incrementQuantity(),
    @required Result decrementQuantity(),
    @required Result updateQuantity(),
    @required Result updateBeer(String name, String code, double price),
  }) {
    assert(incrementQuantity != null);
    assert(decrementQuantity != null);
    assert(updateQuantity != null);
    assert(updateBeer != null);
    return updateQuantity();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result incrementQuantity(),
    Result decrementQuantity(),
    Result updateQuantity(),
    Result updateBeer(String name, String code, double price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateQuantity != null) {
      return updateQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result incrementQuantity(_IncrementQuantity value),
    @required Result decrementQuantity(_DecrementQuantity value),
    @required Result updateQuantity(_WaitForUpdate value),
    @required Result updateBeer(_UpdateBeer value),
  }) {
    assert(incrementQuantity != null);
    assert(decrementQuantity != null);
    assert(updateQuantity != null);
    assert(updateBeer != null);
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result incrementQuantity(_IncrementQuantity value),
    Result decrementQuantity(_DecrementQuantity value),
    Result updateQuantity(_WaitForUpdate value),
    Result updateBeer(_UpdateBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class _WaitForUpdate implements BeerEvent {
  const factory _WaitForUpdate() = _$_WaitForUpdate;
}

/// @nodoc
abstract class _$UpdateBeerCopyWith<$Res> {
  factory _$UpdateBeerCopyWith(
          _UpdateBeer value, $Res Function(_UpdateBeer) then) =
      __$UpdateBeerCopyWithImpl<$Res>;
  $Res call({String name, String code, double price});
}

/// @nodoc
class __$UpdateBeerCopyWithImpl<$Res> extends _$BeerEventCopyWithImpl<$Res>
    implements _$UpdateBeerCopyWith<$Res> {
  __$UpdateBeerCopyWithImpl(
      _UpdateBeer _value, $Res Function(_UpdateBeer) _then)
      : super(_value, (v) => _then(v as _UpdateBeer));

  @override
  _UpdateBeer get _value => super._value as _UpdateBeer;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
    Object price = freezed,
  }) {
    return _then(_UpdateBeer(
      name == freezed ? _value.name : name as String,
      code == freezed ? _value.code : code as String,
      price == freezed ? _value.price : price as double,
    ));
  }
}

/// @nodoc
class _$_UpdateBeer implements _UpdateBeer {
  const _$_UpdateBeer(this.name, this.code, this.price)
      : assert(name != null),
        assert(code != null),
        assert(price != null);

  @override
  final String name;
  @override
  final String code;
  @override
  final double price;

  @override
  String toString() {
    return 'BeerEvent.updateBeer(name: $name, code: $code, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateBeer &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$UpdateBeerCopyWith<_UpdateBeer> get copyWith =>
      __$UpdateBeerCopyWithImpl<_UpdateBeer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result incrementQuantity(),
    @required Result decrementQuantity(),
    @required Result updateQuantity(),
    @required Result updateBeer(String name, String code, double price),
  }) {
    assert(incrementQuantity != null);
    assert(decrementQuantity != null);
    assert(updateQuantity != null);
    assert(updateBeer != null);
    return updateBeer(name, code, price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result incrementQuantity(),
    Result decrementQuantity(),
    Result updateQuantity(),
    Result updateBeer(String name, String code, double price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateBeer != null) {
      return updateBeer(name, code, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result incrementQuantity(_IncrementQuantity value),
    @required Result decrementQuantity(_DecrementQuantity value),
    @required Result updateQuantity(_WaitForUpdate value),
    @required Result updateBeer(_UpdateBeer value),
  }) {
    assert(incrementQuantity != null);
    assert(decrementQuantity != null);
    assert(updateQuantity != null);
    assert(updateBeer != null);
    return updateBeer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result incrementQuantity(_IncrementQuantity value),
    Result decrementQuantity(_DecrementQuantity value),
    Result updateQuantity(_WaitForUpdate value),
    Result updateBeer(_UpdateBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateBeer != null) {
      return updateBeer(this);
    }
    return orElse();
  }
}

abstract class _UpdateBeer implements BeerEvent {
  const factory _UpdateBeer(String name, String code, double price) =
      _$_UpdateBeer;

  String get name;
  String get code;
  double get price;
  _$UpdateBeerCopyWith<_UpdateBeer> get copyWith;
}

/// @nodoc
class _$BeerStateTearOff {
  const _$BeerStateTearOff();

// ignore: unused_element
  _BeerState call(
      {@required int changeValue,
      @required bool isUpdating,
      @required Beer beer,
      @required bool isBroken,
      @required BeerRepositoryMode mode,
      @required bool isAnyQueuedEventFailed}) {
    return _BeerState(
      changeValue: changeValue,
      isUpdating: isUpdating,
      beer: beer,
      isBroken: isBroken,
      mode: mode,
      isAnyQueuedEventFailed: isAnyQueuedEventFailed,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BeerState = _$BeerStateTearOff();

/// @nodoc
mixin _$BeerState {
  int get changeValue;
  bool get isUpdating;
  Beer get beer;
  bool get isBroken;
  BeerRepositoryMode get mode;
  bool get isAnyQueuedEventFailed;

  $BeerStateCopyWith<BeerState> get copyWith;
}

/// @nodoc
abstract class $BeerStateCopyWith<$Res> {
  factory $BeerStateCopyWith(BeerState value, $Res Function(BeerState) then) =
      _$BeerStateCopyWithImpl<$Res>;
  $Res call(
      {int changeValue,
      bool isUpdating,
      Beer beer,
      bool isBroken,
      BeerRepositoryMode mode,
      bool isAnyQueuedEventFailed});

  $BeerCopyWith<$Res> get beer;
}

/// @nodoc
class _$BeerStateCopyWithImpl<$Res> implements $BeerStateCopyWith<$Res> {
  _$BeerStateCopyWithImpl(this._value, this._then);

  final BeerState _value;
  // ignore: unused_field
  final $Res Function(BeerState) _then;

  @override
  $Res call({
    Object changeValue = freezed,
    Object isUpdating = freezed,
    Object beer = freezed,
    Object isBroken = freezed,
    Object mode = freezed,
    Object isAnyQueuedEventFailed = freezed,
  }) {
    return _then(_value.copyWith(
      changeValue:
          changeValue == freezed ? _value.changeValue : changeValue as int,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      beer: beer == freezed ? _value.beer : beer as Beer,
      isBroken: isBroken == freezed ? _value.isBroken : isBroken as bool,
      mode: mode == freezed ? _value.mode : mode as BeerRepositoryMode,
      isAnyQueuedEventFailed: isAnyQueuedEventFailed == freezed
          ? _value.isAnyQueuedEventFailed
          : isAnyQueuedEventFailed as bool,
    ));
  }

  @override
  $BeerCopyWith<$Res> get beer {
    if (_value.beer == null) {
      return null;
    }
    return $BeerCopyWith<$Res>(_value.beer, (value) {
      return _then(_value.copyWith(beer: value));
    });
  }
}

/// @nodoc
abstract class _$BeerStateCopyWith<$Res> implements $BeerStateCopyWith<$Res> {
  factory _$BeerStateCopyWith(
          _BeerState value, $Res Function(_BeerState) then) =
      __$BeerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int changeValue,
      bool isUpdating,
      Beer beer,
      bool isBroken,
      BeerRepositoryMode mode,
      bool isAnyQueuedEventFailed});

  @override
  $BeerCopyWith<$Res> get beer;
}

/// @nodoc
class __$BeerStateCopyWithImpl<$Res> extends _$BeerStateCopyWithImpl<$Res>
    implements _$BeerStateCopyWith<$Res> {
  __$BeerStateCopyWithImpl(_BeerState _value, $Res Function(_BeerState) _then)
      : super(_value, (v) => _then(v as _BeerState));

  @override
  _BeerState get _value => super._value as _BeerState;

  @override
  $Res call({
    Object changeValue = freezed,
    Object isUpdating = freezed,
    Object beer = freezed,
    Object isBroken = freezed,
    Object mode = freezed,
    Object isAnyQueuedEventFailed = freezed,
  }) {
    return _then(_BeerState(
      changeValue:
          changeValue == freezed ? _value.changeValue : changeValue as int,
      isUpdating:
          isUpdating == freezed ? _value.isUpdating : isUpdating as bool,
      beer: beer == freezed ? _value.beer : beer as Beer,
      isBroken: isBroken == freezed ? _value.isBroken : isBroken as bool,
      mode: mode == freezed ? _value.mode : mode as BeerRepositoryMode,
      isAnyQueuedEventFailed: isAnyQueuedEventFailed == freezed
          ? _value.isAnyQueuedEventFailed
          : isAnyQueuedEventFailed as bool,
    ));
  }
}

/// @nodoc
class _$_BeerState implements _BeerState {
  const _$_BeerState(
      {@required this.changeValue,
      @required this.isUpdating,
      @required this.beer,
      @required this.isBroken,
      @required this.mode,
      @required this.isAnyQueuedEventFailed})
      : assert(changeValue != null),
        assert(isUpdating != null),
        assert(beer != null),
        assert(isBroken != null),
        assert(mode != null),
        assert(isAnyQueuedEventFailed != null);

  @override
  final int changeValue;
  @override
  final bool isUpdating;
  @override
  final Beer beer;
  @override
  final bool isBroken;
  @override
  final BeerRepositoryMode mode;
  @override
  final bool isAnyQueuedEventFailed;

  @override
  String toString() {
    return 'BeerState(changeValue: $changeValue, isUpdating: $isUpdating, beer: $beer, isBroken: $isBroken, mode: $mode, isAnyQueuedEventFailed: $isAnyQueuedEventFailed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BeerState &&
            (identical(other.changeValue, changeValue) ||
                const DeepCollectionEquality()
                    .equals(other.changeValue, changeValue)) &&
            (identical(other.isUpdating, isUpdating) ||
                const DeepCollectionEquality()
                    .equals(other.isUpdating, isUpdating)) &&
            (identical(other.beer, beer) ||
                const DeepCollectionEquality().equals(other.beer, beer)) &&
            (identical(other.isBroken, isBroken) ||
                const DeepCollectionEquality()
                    .equals(other.isBroken, isBroken)) &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.isAnyQueuedEventFailed, isAnyQueuedEventFailed) ||
                const DeepCollectionEquality().equals(
                    other.isAnyQueuedEventFailed, isAnyQueuedEventFailed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(changeValue) ^
      const DeepCollectionEquality().hash(isUpdating) ^
      const DeepCollectionEquality().hash(beer) ^
      const DeepCollectionEquality().hash(isBroken) ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(isAnyQueuedEventFailed);

  @override
  _$BeerStateCopyWith<_BeerState> get copyWith =>
      __$BeerStateCopyWithImpl<_BeerState>(this, _$identity);
}

abstract class _BeerState implements BeerState {
  const factory _BeerState(
      {@required int changeValue,
      @required bool isUpdating,
      @required Beer beer,
      @required bool isBroken,
      @required BeerRepositoryMode mode,
      @required bool isAnyQueuedEventFailed}) = _$_BeerState;

  @override
  int get changeValue;
  @override
  bool get isUpdating;
  @override
  Beer get beer;
  @override
  bool get isBroken;
  @override
  BeerRepositoryMode get mode;
  @override
  bool get isAnyQueuedEventFailed;
  @override
  _$BeerStateCopyWith<_BeerState> get copyWith;
}
