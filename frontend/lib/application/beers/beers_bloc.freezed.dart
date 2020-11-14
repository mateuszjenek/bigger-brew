// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'beers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BeersEventTearOff {
  const _$BeersEventTearOff();

// ignore: unused_element
  _FetchFromServer fetch() {
    return const _FetchFromServer();
  }

// ignore: unused_element
  _Refresh synchronize(Completer<void> completer) {
    return _Refresh(
      completer,
    );
  }

// ignore: unused_element
  _DeleteBeer deleteBeer(ID beerId) {
    return _DeleteBeer(
      beerId,
    );
  }

// ignore: unused_element
  _RegisterBeer registerBeer(BeerName name, ProductCode code, Price price) {
    return _RegisterBeer(
      name,
      code,
      price,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BeersEvent = _$BeersEventTearOff();

/// @nodoc
mixin _$BeersEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result synchronize(Completer<void> completer),
    @required Result deleteBeer(ID beerId),
    @required Result registerBeer(BeerName name, ProductCode code, Price price),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result synchronize(Completer<void> completer),
    Result deleteBeer(ID beerId),
    Result registerBeer(BeerName name, ProductCode code, Price price),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_FetchFromServer value),
    @required Result synchronize(_Refresh value),
    @required Result deleteBeer(_DeleteBeer value),
    @required Result registerBeer(_RegisterBeer value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_FetchFromServer value),
    Result synchronize(_Refresh value),
    Result deleteBeer(_DeleteBeer value),
    Result registerBeer(_RegisterBeer value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BeersEventCopyWith<$Res> {
  factory $BeersEventCopyWith(
          BeersEvent value, $Res Function(BeersEvent) then) =
      _$BeersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BeersEventCopyWithImpl<$Res> implements $BeersEventCopyWith<$Res> {
  _$BeersEventCopyWithImpl(this._value, this._then);

  final BeersEvent _value;
  // ignore: unused_field
  final $Res Function(BeersEvent) _then;
}

/// @nodoc
abstract class _$FetchFromServerCopyWith<$Res> {
  factory _$FetchFromServerCopyWith(
          _FetchFromServer value, $Res Function(_FetchFromServer) then) =
      __$FetchFromServerCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchFromServerCopyWithImpl<$Res>
    extends _$BeersEventCopyWithImpl<$Res>
    implements _$FetchFromServerCopyWith<$Res> {
  __$FetchFromServerCopyWithImpl(
      _FetchFromServer _value, $Res Function(_FetchFromServer) _then)
      : super(_value, (v) => _then(v as _FetchFromServer));

  @override
  _FetchFromServer get _value => super._value as _FetchFromServer;
}

/// @nodoc
class _$_FetchFromServer
    with DiagnosticableTreeMixin
    implements _FetchFromServer {
  const _$_FetchFromServer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeersEvent.fetch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BeersEvent.fetch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchFromServer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result synchronize(Completer<void> completer),
    @required Result deleteBeer(ID beerId),
    @required Result registerBeer(BeerName name, ProductCode code, Price price),
  }) {
    assert(fetch != null);
    assert(synchronize != null);
    assert(deleteBeer != null);
    assert(registerBeer != null);
    return fetch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result synchronize(Completer<void> completer),
    Result deleteBeer(ID beerId),
    Result registerBeer(BeerName name, ProductCode code, Price price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_FetchFromServer value),
    @required Result synchronize(_Refresh value),
    @required Result deleteBeer(_DeleteBeer value),
    @required Result registerBeer(_RegisterBeer value),
  }) {
    assert(fetch != null);
    assert(synchronize != null);
    assert(deleteBeer != null);
    assert(registerBeer != null);
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_FetchFromServer value),
    Result synchronize(_Refresh value),
    Result deleteBeer(_DeleteBeer value),
    Result registerBeer(_RegisterBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchFromServer implements BeersEvent {
  const factory _FetchFromServer() = _$_FetchFromServer;
}

/// @nodoc
abstract class _$RefreshCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) then) =
      __$RefreshCopyWithImpl<$Res>;
  $Res call({Completer<void> completer});
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> extends _$BeersEventCopyWithImpl<$Res>
    implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(_Refresh _value, $Res Function(_Refresh) _then)
      : super(_value, (v) => _then(v as _Refresh));

  @override
  _Refresh get _value => super._value as _Refresh;

  @override
  $Res call({
    Object completer = freezed,
  }) {
    return _then(_Refresh(
      completer == freezed ? _value.completer : completer as Completer<void>,
    ));
  }
}

/// @nodoc
class _$_Refresh with DiagnosticableTreeMixin implements _Refresh {
  const _$_Refresh(this.completer) : assert(completer != null);

  @override
  final Completer<void> completer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeersEvent.synchronize(completer: $completer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeersEvent.synchronize'))
      ..add(DiagnosticsProperty('completer', completer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Refresh &&
            (identical(other.completer, completer) ||
                const DeepCollectionEquality()
                    .equals(other.completer, completer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(completer);

  @override
  _$RefreshCopyWith<_Refresh> get copyWith =>
      __$RefreshCopyWithImpl<_Refresh>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result synchronize(Completer<void> completer),
    @required Result deleteBeer(ID beerId),
    @required Result registerBeer(BeerName name, ProductCode code, Price price),
  }) {
    assert(fetch != null);
    assert(synchronize != null);
    assert(deleteBeer != null);
    assert(registerBeer != null);
    return synchronize(completer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result synchronize(Completer<void> completer),
    Result deleteBeer(ID beerId),
    Result registerBeer(BeerName name, ProductCode code, Price price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (synchronize != null) {
      return synchronize(completer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_FetchFromServer value),
    @required Result synchronize(_Refresh value),
    @required Result deleteBeer(_DeleteBeer value),
    @required Result registerBeer(_RegisterBeer value),
  }) {
    assert(fetch != null);
    assert(synchronize != null);
    assert(deleteBeer != null);
    assert(registerBeer != null);
    return synchronize(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_FetchFromServer value),
    Result synchronize(_Refresh value),
    Result deleteBeer(_DeleteBeer value),
    Result registerBeer(_RegisterBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (synchronize != null) {
      return synchronize(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements BeersEvent {
  const factory _Refresh(Completer<void> completer) = _$_Refresh;

  Completer<void> get completer;
  _$RefreshCopyWith<_Refresh> get copyWith;
}

/// @nodoc
abstract class _$DeleteBeerCopyWith<$Res> {
  factory _$DeleteBeerCopyWith(
          _DeleteBeer value, $Res Function(_DeleteBeer) then) =
      __$DeleteBeerCopyWithImpl<$Res>;
  $Res call({ID beerId});
}

/// @nodoc
class __$DeleteBeerCopyWithImpl<$Res> extends _$BeersEventCopyWithImpl<$Res>
    implements _$DeleteBeerCopyWith<$Res> {
  __$DeleteBeerCopyWithImpl(
      _DeleteBeer _value, $Res Function(_DeleteBeer) _then)
      : super(_value, (v) => _then(v as _DeleteBeer));

  @override
  _DeleteBeer get _value => super._value as _DeleteBeer;

  @override
  $Res call({
    Object beerId = freezed,
  }) {
    return _then(_DeleteBeer(
      beerId == freezed ? _value.beerId : beerId as ID,
    ));
  }
}

/// @nodoc
class _$_DeleteBeer with DiagnosticableTreeMixin implements _DeleteBeer {
  const _$_DeleteBeer(this.beerId) : assert(beerId != null);

  @override
  final ID beerId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeersEvent.deleteBeer(beerId: $beerId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeersEvent.deleteBeer'))
      ..add(DiagnosticsProperty('beerId', beerId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteBeer &&
            (identical(other.beerId, beerId) ||
                const DeepCollectionEquality().equals(other.beerId, beerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(beerId);

  @override
  _$DeleteBeerCopyWith<_DeleteBeer> get copyWith =>
      __$DeleteBeerCopyWithImpl<_DeleteBeer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result synchronize(Completer<void> completer),
    @required Result deleteBeer(ID beerId),
    @required Result registerBeer(BeerName name, ProductCode code, Price price),
  }) {
    assert(fetch != null);
    assert(synchronize != null);
    assert(deleteBeer != null);
    assert(registerBeer != null);
    return deleteBeer(beerId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result synchronize(Completer<void> completer),
    Result deleteBeer(ID beerId),
    Result registerBeer(BeerName name, ProductCode code, Price price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteBeer != null) {
      return deleteBeer(beerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_FetchFromServer value),
    @required Result synchronize(_Refresh value),
    @required Result deleteBeer(_DeleteBeer value),
    @required Result registerBeer(_RegisterBeer value),
  }) {
    assert(fetch != null);
    assert(synchronize != null);
    assert(deleteBeer != null);
    assert(registerBeer != null);
    return deleteBeer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_FetchFromServer value),
    Result synchronize(_Refresh value),
    Result deleteBeer(_DeleteBeer value),
    Result registerBeer(_RegisterBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteBeer != null) {
      return deleteBeer(this);
    }
    return orElse();
  }
}

abstract class _DeleteBeer implements BeersEvent {
  const factory _DeleteBeer(ID beerId) = _$_DeleteBeer;

  ID get beerId;
  _$DeleteBeerCopyWith<_DeleteBeer> get copyWith;
}

/// @nodoc
abstract class _$RegisterBeerCopyWith<$Res> {
  factory _$RegisterBeerCopyWith(
          _RegisterBeer value, $Res Function(_RegisterBeer) then) =
      __$RegisterBeerCopyWithImpl<$Res>;
  $Res call({BeerName name, ProductCode code, Price price});
}

/// @nodoc
class __$RegisterBeerCopyWithImpl<$Res> extends _$BeersEventCopyWithImpl<$Res>
    implements _$RegisterBeerCopyWith<$Res> {
  __$RegisterBeerCopyWithImpl(
      _RegisterBeer _value, $Res Function(_RegisterBeer) _then)
      : super(_value, (v) => _then(v as _RegisterBeer));

  @override
  _RegisterBeer get _value => super._value as _RegisterBeer;

  @override
  $Res call({
    Object name = freezed,
    Object code = freezed,
    Object price = freezed,
  }) {
    return _then(_RegisterBeer(
      name == freezed ? _value.name : name as BeerName,
      code == freezed ? _value.code : code as ProductCode,
      price == freezed ? _value.price : price as Price,
    ));
  }
}

/// @nodoc
class _$_RegisterBeer with DiagnosticableTreeMixin implements _RegisterBeer {
  const _$_RegisterBeer(this.name, this.code, this.price)
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeersEvent.registerBeer(name: $name, code: $code, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeersEvent.registerBeer'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterBeer &&
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
  _$RegisterBeerCopyWith<_RegisterBeer> get copyWith =>
      __$RegisterBeerCopyWithImpl<_RegisterBeer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fetch(),
    @required Result synchronize(Completer<void> completer),
    @required Result deleteBeer(ID beerId),
    @required Result registerBeer(BeerName name, ProductCode code, Price price),
  }) {
    assert(fetch != null);
    assert(synchronize != null);
    assert(deleteBeer != null);
    assert(registerBeer != null);
    return registerBeer(name, code, price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fetch(),
    Result synchronize(Completer<void> completer),
    Result deleteBeer(ID beerId),
    Result registerBeer(BeerName name, ProductCode code, Price price),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerBeer != null) {
      return registerBeer(name, code, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fetch(_FetchFromServer value),
    @required Result synchronize(_Refresh value),
    @required Result deleteBeer(_DeleteBeer value),
    @required Result registerBeer(_RegisterBeer value),
  }) {
    assert(fetch != null);
    assert(synchronize != null);
    assert(deleteBeer != null);
    assert(registerBeer != null);
    return registerBeer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fetch(_FetchFromServer value),
    Result synchronize(_Refresh value),
    Result deleteBeer(_DeleteBeer value),
    Result registerBeer(_RegisterBeer value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerBeer != null) {
      return registerBeer(this);
    }
    return orElse();
  }
}

abstract class _RegisterBeer implements BeersEvent {
  const factory _RegisterBeer(BeerName name, ProductCode code, Price price) =
      _$_RegisterBeer;

  BeerName get name;
  ProductCode get code;
  Price get price;
  _$RegisterBeerCopyWith<_RegisterBeer> get copyWith;
}

/// @nodoc
class _$BeersStateTearOff {
  const _$BeersStateTearOff();

// ignore: unused_element
  Inital initial() {
    return const Inital();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded(List<Beer> beers) {
    return Loaded(
      beers,
    );
  }

// ignore: unused_element
  Failed failed(BeerFailure failure) {
    return Failed(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BeersState = _$BeersStateTearOff();

/// @nodoc
mixin _$BeersState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Beer> beers),
    @required Result failed(BeerFailure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Beer> beers),
    Result failed(BeerFailure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Inital value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Inital value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BeersStateCopyWith<$Res> {
  factory $BeersStateCopyWith(
          BeersState value, $Res Function(BeersState) then) =
      _$BeersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BeersStateCopyWithImpl<$Res> implements $BeersStateCopyWith<$Res> {
  _$BeersStateCopyWithImpl(this._value, this._then);

  final BeersState _value;
  // ignore: unused_field
  final $Res Function(BeersState) _then;
}

/// @nodoc
abstract class $InitalCopyWith<$Res> {
  factory $InitalCopyWith(Inital value, $Res Function(Inital) then) =
      _$InitalCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitalCopyWithImpl<$Res> extends _$BeersStateCopyWithImpl<$Res>
    implements $InitalCopyWith<$Res> {
  _$InitalCopyWithImpl(Inital _value, $Res Function(Inital) _then)
      : super(_value, (v) => _then(v as Inital));

  @override
  Inital get _value => super._value as Inital;
}

/// @nodoc
class _$Inital with DiagnosticableTreeMixin implements Inital {
  const _$Inital();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeersState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BeersState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Inital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Beer> beers),
    @required Result failed(BeerFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Beer> beers),
    Result failed(BeerFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Inital value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Inital value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Inital implements BeersState {
  const factory Inital() = _$Inital;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$BeersStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeersState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'BeersState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Beer> beers),
    @required Result failed(BeerFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Beer> beers),
    Result failed(BeerFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Inital value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Inital value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BeersState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<Beer> beers});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$BeersStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object beers = freezed,
  }) {
    return _then(Loaded(
      beers == freezed ? _value.beers : beers as List<Beer>,
    ));
  }
}

/// @nodoc
class _$Loaded with DiagnosticableTreeMixin implements Loaded {
  const _$Loaded(this.beers) : assert(beers != null);

  @override
  final List<Beer> beers;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeersState.loaded(beers: $beers)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeersState.loaded'))
      ..add(DiagnosticsProperty('beers', beers));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.beers, beers) ||
                const DeepCollectionEquality().equals(other.beers, beers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(beers);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Beer> beers),
    @required Result failed(BeerFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(beers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Beer> beers),
    Result failed(BeerFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(beers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Inital value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Inital value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements BeersState {
  const factory Loaded(List<Beer> beers) = _$Loaded;

  List<Beer> get beers;
  $LoadedCopyWith<Loaded> get copyWith;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({BeerFailure failure});

  $BeerFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$BeersStateCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(Failed(
      failure == freezed ? _value.failure : failure as BeerFailure,
    ));
  }

  @override
  $BeerFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $BeerFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$Failed with DiagnosticableTreeMixin implements Failed {
  const _$Failed(this.failure) : assert(failure != null);

  @override
  final BeerFailure failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BeersState.failed(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BeersState.failed'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failed &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $FailedCopyWith<Failed> get copyWith =>
      _$FailedCopyWithImpl<Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<Beer> beers),
    @required Result failed(BeerFailure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<Beer> beers),
    Result failed(BeerFailure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Inital value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Inital value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements BeersState {
  const factory Failed(BeerFailure failure) = _$Failed;

  BeerFailure get failure;
  $FailedCopyWith<Failed> get copyWith;
}
