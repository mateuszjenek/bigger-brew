// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'options_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$OptionsEventTearOff {
  const _$OptionsEventTearOff();

// ignore: unused_element
  GetConfiguration getConfiguration() {
    return const GetConfiguration();
  }

// ignore: unused_element
  ChangeNetworkMode changeNetworkMode(bool isOffline) {
    return ChangeNetworkMode(
      isOffline,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OptionsEvent = _$OptionsEventTearOff();

/// @nodoc
mixin _$OptionsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getConfiguration(),
    @required Result changeNetworkMode(bool isOffline),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getConfiguration(),
    Result changeNetworkMode(bool isOffline),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getConfiguration(GetConfiguration value),
    @required Result changeNetworkMode(ChangeNetworkMode value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getConfiguration(GetConfiguration value),
    Result changeNetworkMode(ChangeNetworkMode value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $OptionsEventCopyWith<$Res> {
  factory $OptionsEventCopyWith(
          OptionsEvent value, $Res Function(OptionsEvent) then) =
      _$OptionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OptionsEventCopyWithImpl<$Res> implements $OptionsEventCopyWith<$Res> {
  _$OptionsEventCopyWithImpl(this._value, this._then);

  final OptionsEvent _value;
  // ignore: unused_field
  final $Res Function(OptionsEvent) _then;
}

/// @nodoc
abstract class $GetConfigurationCopyWith<$Res> {
  factory $GetConfigurationCopyWith(
          GetConfiguration value, $Res Function(GetConfiguration) then) =
      _$GetConfigurationCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetConfigurationCopyWithImpl<$Res>
    extends _$OptionsEventCopyWithImpl<$Res>
    implements $GetConfigurationCopyWith<$Res> {
  _$GetConfigurationCopyWithImpl(
      GetConfiguration _value, $Res Function(GetConfiguration) _then)
      : super(_value, (v) => _then(v as GetConfiguration));

  @override
  GetConfiguration get _value => super._value as GetConfiguration;
}

/// @nodoc
class _$GetConfiguration implements GetConfiguration {
  const _$GetConfiguration();

  @override
  String toString() {
    return 'OptionsEvent.getConfiguration()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetConfiguration);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getConfiguration(),
    @required Result changeNetworkMode(bool isOffline),
  }) {
    assert(getConfiguration != null);
    assert(changeNetworkMode != null);
    return getConfiguration();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getConfiguration(),
    Result changeNetworkMode(bool isOffline),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getConfiguration != null) {
      return getConfiguration();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getConfiguration(GetConfiguration value),
    @required Result changeNetworkMode(ChangeNetworkMode value),
  }) {
    assert(getConfiguration != null);
    assert(changeNetworkMode != null);
    return getConfiguration(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getConfiguration(GetConfiguration value),
    Result changeNetworkMode(ChangeNetworkMode value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getConfiguration != null) {
      return getConfiguration(this);
    }
    return orElse();
  }
}

abstract class GetConfiguration implements OptionsEvent {
  const factory GetConfiguration() = _$GetConfiguration;
}

/// @nodoc
abstract class $ChangeNetworkModeCopyWith<$Res> {
  factory $ChangeNetworkModeCopyWith(
          ChangeNetworkMode value, $Res Function(ChangeNetworkMode) then) =
      _$ChangeNetworkModeCopyWithImpl<$Res>;
  $Res call({bool isOffline});
}

/// @nodoc
class _$ChangeNetworkModeCopyWithImpl<$Res>
    extends _$OptionsEventCopyWithImpl<$Res>
    implements $ChangeNetworkModeCopyWith<$Res> {
  _$ChangeNetworkModeCopyWithImpl(
      ChangeNetworkMode _value, $Res Function(ChangeNetworkMode) _then)
      : super(_value, (v) => _then(v as ChangeNetworkMode));

  @override
  ChangeNetworkMode get _value => super._value as ChangeNetworkMode;

  @override
  $Res call({
    Object isOffline = freezed,
  }) {
    return _then(ChangeNetworkMode(
      isOffline == freezed ? _value.isOffline : isOffline as bool,
    ));
  }
}

/// @nodoc
class _$ChangeNetworkMode implements ChangeNetworkMode {
  const _$ChangeNetworkMode(this.isOffline) : assert(isOffline != null);

  @override
  final bool isOffline;

  @override
  String toString() {
    return 'OptionsEvent.changeNetworkMode(isOffline: $isOffline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ChangeNetworkMode &&
            (identical(other.isOffline, isOffline) ||
                const DeepCollectionEquality()
                    .equals(other.isOffline, isOffline)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOffline);

  @override
  $ChangeNetworkModeCopyWith<ChangeNetworkMode> get copyWith =>
      _$ChangeNetworkModeCopyWithImpl<ChangeNetworkMode>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getConfiguration(),
    @required Result changeNetworkMode(bool isOffline),
  }) {
    assert(getConfiguration != null);
    assert(changeNetworkMode != null);
    return changeNetworkMode(isOffline);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getConfiguration(),
    Result changeNetworkMode(bool isOffline),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeNetworkMode != null) {
      return changeNetworkMode(isOffline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getConfiguration(GetConfiguration value),
    @required Result changeNetworkMode(ChangeNetworkMode value),
  }) {
    assert(getConfiguration != null);
    assert(changeNetworkMode != null);
    return changeNetworkMode(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getConfiguration(GetConfiguration value),
    Result changeNetworkMode(ChangeNetworkMode value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeNetworkMode != null) {
      return changeNetworkMode(this);
    }
    return orElse();
  }
}

abstract class ChangeNetworkMode implements OptionsEvent {
  const factory ChangeNetworkMode(bool isOffline) = _$ChangeNetworkMode;

  bool get isOffline;
  $ChangeNetworkModeCopyWith<ChangeNetworkMode> get copyWith;
}

/// @nodoc
class _$OptionsStateTearOff {
  const _$OptionsStateTearOff();

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded(Configuration configuration) {
    return Loaded(
      configuration,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $OptionsState = _$OptionsStateTearOff();

/// @nodoc
mixin _$OptionsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(Configuration configuration),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Configuration configuration),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result loaded(Loaded value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $OptionsStateCopyWith<$Res> {
  factory $OptionsStateCopyWith(
          OptionsState value, $Res Function(OptionsState) then) =
      _$OptionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OptionsStateCopyWithImpl<$Res> implements $OptionsStateCopyWith<$Res> {
  _$OptionsStateCopyWithImpl(this._value, this._then);

  final OptionsState _value;
  // ignore: unused_field
  final $Res Function(OptionsState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$OptionsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc
class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'OptionsState.loading()';
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
    @required Result loading(),
    @required Result loaded(Configuration configuration),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Configuration configuration),
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
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements OptionsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({Configuration configuration});

  $ConfigurationCopyWith<$Res> get configuration;
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$OptionsStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object configuration = freezed,
  }) {
    return _then(Loaded(
      configuration == freezed
          ? _value.configuration
          : configuration as Configuration,
    ));
  }

  @override
  $ConfigurationCopyWith<$Res> get configuration {
    if (_value.configuration == null) {
      return null;
    }
    return $ConfigurationCopyWith<$Res>(_value.configuration, (value) {
      return _then(_value.copyWith(configuration: value));
    });
  }
}

/// @nodoc
class _$Loaded implements Loaded {
  const _$Loaded(this.configuration) : assert(configuration != null);

  @override
  final Configuration configuration;

  @override
  String toString() {
    return 'OptionsState.loaded(configuration: $configuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.configuration, configuration) ||
                const DeepCollectionEquality()
                    .equals(other.configuration, configuration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(configuration);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loading(),
    @required Result loaded(Configuration configuration),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(configuration);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loading(),
    Result loaded(Configuration configuration),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(configuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
  }) {
    assert(loading != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loading(Loading value),
    Result loaded(Loaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements OptionsState {
  const factory Loaded(Configuration configuration) = _$Loaded;

  Configuration get configuration;
  $LoadedCopyWith<Loaded> get copyWith;
}
