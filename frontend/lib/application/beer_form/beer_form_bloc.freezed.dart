// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'beer_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BeerFormEventTearOff {
  const _$BeerFormEventTearOff();

// ignore: unused_element
  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

// ignore: unused_element
  CodeChanged codeChanged(String code) {
    return CodeChanged(
      code,
    );
  }

// ignore: unused_element
  PriceChanged priceChanged(double price) {
    return PriceChanged(
      price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BeerFormEvent = _$BeerFormEventTearOff();

/// @nodoc
mixin _$BeerFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BeerFormEventCopyWith<$Res> {
  factory $BeerFormEventCopyWith(
          BeerFormEvent value, $Res Function(BeerFormEvent) then) =
      _$BeerFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BeerFormEventCopyWithImpl<$Res>
    implements $BeerFormEventCopyWith<$Res> {
  _$BeerFormEventCopyWithImpl(this._value, this._then);

  final BeerFormEvent _value;
  // ignore: unused_field
  final $Res Function(BeerFormEvent) _then;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$BeerFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'BeerFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements BeerFormEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  $NameChangedCopyWith<NameChanged> get copyWith;
}

/// @nodoc
abstract class $CodeChangedCopyWith<$Res> {
  factory $CodeChangedCopyWith(
          CodeChanged value, $Res Function(CodeChanged) then) =
      _$CodeChangedCopyWithImpl<$Res>;
  $Res call({String code});
}

/// @nodoc
class _$CodeChangedCopyWithImpl<$Res> extends _$BeerFormEventCopyWithImpl<$Res>
    implements $CodeChangedCopyWith<$Res> {
  _$CodeChangedCopyWithImpl(
      CodeChanged _value, $Res Function(CodeChanged) _then)
      : super(_value, (v) => _then(v as CodeChanged));

  @override
  CodeChanged get _value => super._value as CodeChanged;

  @override
  $Res call({
    Object code = freezed,
  }) {
    return _then(CodeChanged(
      code == freezed ? _value.code : code as String,
    ));
  }
}

/// @nodoc
class _$CodeChanged implements CodeChanged {
  const _$CodeChanged(this.code) : assert(code != null);

  @override
  final String code;

  @override
  String toString() {
    return 'BeerFormEvent.codeChanged(code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CodeChanged &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(code);

  @override
  $CodeChangedCopyWith<CodeChanged> get copyWith =>
      _$CodeChangedCopyWithImpl<CodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    return codeChanged(code);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (codeChanged != null) {
      return codeChanged(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    return codeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (codeChanged != null) {
      return codeChanged(this);
    }
    return orElse();
  }
}

abstract class CodeChanged implements BeerFormEvent {
  const factory CodeChanged(String code) = _$CodeChanged;

  String get code;
  $CodeChangedCopyWith<CodeChanged> get copyWith;
}

/// @nodoc
abstract class $PriceChangedCopyWith<$Res> {
  factory $PriceChangedCopyWith(
          PriceChanged value, $Res Function(PriceChanged) then) =
      _$PriceChangedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class _$PriceChangedCopyWithImpl<$Res> extends _$BeerFormEventCopyWithImpl<$Res>
    implements $PriceChangedCopyWith<$Res> {
  _$PriceChangedCopyWithImpl(
      PriceChanged _value, $Res Function(PriceChanged) _then)
      : super(_value, (v) => _then(v as PriceChanged));

  @override
  PriceChanged get _value => super._value as PriceChanged;

  @override
  $Res call({
    Object price = freezed,
  }) {
    return _then(PriceChanged(
      price == freezed ? _value.price : price as double,
    ));
  }
}

/// @nodoc
class _$PriceChanged implements PriceChanged {
  const _$PriceChanged(this.price) : assert(price != null);

  @override
  final double price;

  @override
  String toString() {
    return 'BeerFormEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PriceChanged &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @override
  $PriceChangedCopyWith<PriceChanged> get copyWith =>
      _$PriceChangedCopyWithImpl<PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result nameChanged(String name),
    @required Result codeChanged(String code),
    @required Result priceChanged(double price),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result nameChanged(String name),
    Result codeChanged(String code),
    Result priceChanged(double price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result nameChanged(NameChanged value),
    @required Result codeChanged(CodeChanged value),
    @required Result priceChanged(PriceChanged value),
  }) {
    assert(nameChanged != null);
    assert(codeChanged != null);
    assert(priceChanged != null);
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result nameChanged(NameChanged value),
    Result codeChanged(CodeChanged value),
    Result priceChanged(PriceChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class PriceChanged implements BeerFormEvent {
  const factory PriceChanged(double price) = _$PriceChanged;

  double get price;
  $PriceChangedCopyWith<PriceChanged> get copyWith;
}

/// @nodoc
class _$BeerFormStateTearOff {
  const _$BeerFormStateTearOff();

// ignore: unused_element
  _BeerFormState call(
      {@required BeerName name,
      @required ProductCode code,
      @required Price price}) {
    return _BeerFormState(
      name: name,
      code: code,
      price: price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BeerFormState = _$BeerFormStateTearOff();

/// @nodoc
mixin _$BeerFormState {
  BeerName get name;
  ProductCode get code;
  Price get price;

  $BeerFormStateCopyWith<BeerFormState> get copyWith;
}

/// @nodoc
abstract class $BeerFormStateCopyWith<$Res> {
  factory $BeerFormStateCopyWith(
          BeerFormState value, $Res Function(BeerFormState) then) =
      _$BeerFormStateCopyWithImpl<$Res>;
  $Res call({BeerName name, ProductCode code, Price price});
}

/// @nodoc
class _$BeerFormStateCopyWithImpl<$Res>
    implements $BeerFormStateCopyWith<$Res> {
  _$BeerFormStateCopyWithImpl(this._value, this._then);

  final BeerFormState _value;
  // ignore: unused_field
  final $Res Function(BeerFormState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as BeerName,
      code: code == freezed ? _value.code : code as ProductCode,
      price: price == freezed ? _value.price : price as Price,
    ));
  }
}

/// @nodoc
abstract class _$BeerFormStateCopyWith<$Res>
    implements $BeerFormStateCopyWith<$Res> {
  factory _$BeerFormStateCopyWith(
          _BeerFormState value, $Res Function(_BeerFormState) then) =
      __$BeerFormStateCopyWithImpl<$Res>;
  @override
  $Res call({BeerName name, ProductCode code, Price price});
}

/// @nodoc
class __$BeerFormStateCopyWithImpl<$Res>
    extends _$BeerFormStateCopyWithImpl<$Res>
    implements _$BeerFormStateCopyWith<$Res> {
  __$BeerFormStateCopyWithImpl(
      _BeerFormState _value, $Res Function(_BeerFormState) _then)
      : super(_value, (v) => _then(v as _BeerFormState));

  @override
  _BeerFormState get _value => super._value as _BeerFormState;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
    Object price = freezed,
  }) {
    return _then(_BeerFormState(
      name: name == freezed ? _value.name : name as BeerName,
      code: code == freezed ? _value.code : code as ProductCode,
      price: price == freezed ? _value.price : price as Price,
    ));
  }
}

/// @nodoc
class _$_BeerFormState implements _BeerFormState {
  const _$_BeerFormState(
      {@required this.name, @required this.code, @required this.price})
      : assert(name != null),
        assert(code != null),
        assert(price != null);

  @override
  final BeerName name;
  @override
  final ProductCode code;
  @override
  final Price price;

  @override
  String toString() {
    return 'BeerFormState(name: $name, code: $code, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BeerFormState &&
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
  _$BeerFormStateCopyWith<_BeerFormState> get copyWith =>
      __$BeerFormStateCopyWithImpl<_BeerFormState>(this, _$identity);
}

abstract class _BeerFormState implements BeerFormState {
  const factory _BeerFormState(
      {@required BeerName name,
      @required ProductCode code,
      @required Price price}) = _$_BeerFormState;

  @override
  BeerName get name;
  @override
  ProductCode get code;
  @override
  Price get price;
  @override
  _$BeerFormStateCopyWith<_BeerFormState> get copyWith;
}
