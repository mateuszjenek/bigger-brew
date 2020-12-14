// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'network_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NetworkStatusEventTearOff {
  const _$NetworkStatusEventTearOff();

// ignore: unused_element
  Update update(BeerRepositoryMode mode) {
    return Update(
      mode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkStatusEvent = _$NetworkStatusEventTearOff();

/// @nodoc
mixin _$NetworkStatusEvent {
  BeerRepositoryMode get mode;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result update(BeerRepositoryMode mode),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result update(BeerRepositoryMode mode),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result update(Update value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result update(Update value),
    @required Result orElse(),
  });

  $NetworkStatusEventCopyWith<NetworkStatusEvent> get copyWith;
}

/// @nodoc
abstract class $NetworkStatusEventCopyWith<$Res> {
  factory $NetworkStatusEventCopyWith(
          NetworkStatusEvent value, $Res Function(NetworkStatusEvent) then) =
      _$NetworkStatusEventCopyWithImpl<$Res>;
  $Res call({BeerRepositoryMode mode});
}

/// @nodoc
class _$NetworkStatusEventCopyWithImpl<$Res>
    implements $NetworkStatusEventCopyWith<$Res> {
  _$NetworkStatusEventCopyWithImpl(this._value, this._then);

  final NetworkStatusEvent _value;
  // ignore: unused_field
  final $Res Function(NetworkStatusEvent) _then;

  @override
  $Res call({
    Object mode = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed ? _value.mode : mode as BeerRepositoryMode,
    ));
  }
}

/// @nodoc
abstract class $UpdateCopyWith<$Res>
    implements $NetworkStatusEventCopyWith<$Res> {
  factory $UpdateCopyWith(Update value, $Res Function(Update) then) =
      _$UpdateCopyWithImpl<$Res>;
  @override
  $Res call({BeerRepositoryMode mode});
}

/// @nodoc
class _$UpdateCopyWithImpl<$Res> extends _$NetworkStatusEventCopyWithImpl<$Res>
    implements $UpdateCopyWith<$Res> {
  _$UpdateCopyWithImpl(Update _value, $Res Function(Update) _then)
      : super(_value, (v) => _then(v as Update));

  @override
  Update get _value => super._value as Update;

  @override
  $Res call({
    Object mode = freezed,
  }) {
    return _then(Update(
      mode == freezed ? _value.mode : mode as BeerRepositoryMode,
    ));
  }
}

/// @nodoc
class _$Update implements Update {
  const _$Update(this.mode) : assert(mode != null);

  @override
  final BeerRepositoryMode mode;

  @override
  String toString() {
    return 'NetworkStatusEvent.update(mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Update &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(mode);

  @override
  $UpdateCopyWith<Update> get copyWith =>
      _$UpdateCopyWithImpl<Update>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result update(BeerRepositoryMode mode),
  }) {
    assert(update != null);
    return update(mode);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result update(BeerRepositoryMode mode),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result update(Update value),
  }) {
    assert(update != null);
    return update(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result update(Update value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements NetworkStatusEvent {
  const factory Update(BeerRepositoryMode mode) = _$Update;

  @override
  BeerRepositoryMode get mode;
  @override
  $UpdateCopyWith<Update> get copyWith;
}

/// @nodoc
class _$NetworkStatusStateTearOff {
  const _$NetworkStatusStateTearOff();

// ignore: unused_element
  Online online() {
    return const Online();
  }

// ignore: unused_element
  Offline offline() {
    return const Offline();
  }
}

/// @nodoc
// ignore: unused_element
const $NetworkStatusState = _$NetworkStatusStateTearOff();

/// @nodoc
mixin _$NetworkStatusState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result online(),
    @required Result offline(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result online(),
    Result offline(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result online(Online value),
    @required Result offline(Offline value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result online(Online value),
    Result offline(Offline value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NetworkStatusStateCopyWith<$Res> {
  factory $NetworkStatusStateCopyWith(
          NetworkStatusState value, $Res Function(NetworkStatusState) then) =
      _$NetworkStatusStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkStatusStateCopyWithImpl<$Res>
    implements $NetworkStatusStateCopyWith<$Res> {
  _$NetworkStatusStateCopyWithImpl(this._value, this._then);

  final NetworkStatusState _value;
  // ignore: unused_field
  final $Res Function(NetworkStatusState) _then;
}

/// @nodoc
abstract class $OnlineCopyWith<$Res> {
  factory $OnlineCopyWith(Online value, $Res Function(Online) then) =
      _$OnlineCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnlineCopyWithImpl<$Res> extends _$NetworkStatusStateCopyWithImpl<$Res>
    implements $OnlineCopyWith<$Res> {
  _$OnlineCopyWithImpl(Online _value, $Res Function(Online) _then)
      : super(_value, (v) => _then(v as Online));

  @override
  Online get _value => super._value as Online;
}

/// @nodoc
class _$Online implements Online {
  const _$Online();

  @override
  String toString() {
    return 'NetworkStatusState.online()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Online);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result online(),
    @required Result offline(),
  }) {
    assert(online != null);
    assert(offline != null);
    return online();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result online(),
    Result offline(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (online != null) {
      return online();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result online(Online value),
    @required Result offline(Offline value),
  }) {
    assert(online != null);
    assert(offline != null);
    return online(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result online(Online value),
    Result offline(Offline value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (online != null) {
      return online(this);
    }
    return orElse();
  }
}

abstract class Online implements NetworkStatusState {
  const factory Online() = _$Online;
}

/// @nodoc
abstract class $OfflineCopyWith<$Res> {
  factory $OfflineCopyWith(Offline value, $Res Function(Offline) then) =
      _$OfflineCopyWithImpl<$Res>;
}

/// @nodoc
class _$OfflineCopyWithImpl<$Res> extends _$NetworkStatusStateCopyWithImpl<$Res>
    implements $OfflineCopyWith<$Res> {
  _$OfflineCopyWithImpl(Offline _value, $Res Function(Offline) _then)
      : super(_value, (v) => _then(v as Offline));

  @override
  Offline get _value => super._value as Offline;
}

/// @nodoc
class _$Offline implements Offline {
  const _$Offline();

  @override
  String toString() {
    return 'NetworkStatusState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Offline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result online(),
    @required Result offline(),
  }) {
    assert(online != null);
    assert(offline != null);
    return offline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result online(),
    Result offline(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result online(Online value),
    @required Result offline(Offline value),
  }) {
    assert(online != null);
    assert(offline != null);
    return offline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result online(Online value),
    Result offline(Offline value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class Offline implements NetworkStatusState {
  const factory Offline() = _$Offline;
}
