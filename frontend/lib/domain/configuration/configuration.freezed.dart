// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ConfigurationTearOff {
  const _$ConfigurationTearOff();

// ignore: unused_element
  _Configuration call({@required bool isOfflineMode}) {
    return _Configuration(
      isOfflineMode: isOfflineMode,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Configuration = _$ConfigurationTearOff();

/// @nodoc
mixin _$Configuration {
  bool get isOfflineMode;

  $ConfigurationCopyWith<Configuration> get copyWith;
}

/// @nodoc
abstract class $ConfigurationCopyWith<$Res> {
  factory $ConfigurationCopyWith(
          Configuration value, $Res Function(Configuration) then) =
      _$ConfigurationCopyWithImpl<$Res>;
  $Res call({bool isOfflineMode});
}

/// @nodoc
class _$ConfigurationCopyWithImpl<$Res>
    implements $ConfigurationCopyWith<$Res> {
  _$ConfigurationCopyWithImpl(this._value, this._then);

  final Configuration _value;
  // ignore: unused_field
  final $Res Function(Configuration) _then;

  @override
  $Res call({
    Object isOfflineMode = freezed,
  }) {
    return _then(_value.copyWith(
      isOfflineMode: isOfflineMode == freezed
          ? _value.isOfflineMode
          : isOfflineMode as bool,
    ));
  }
}

/// @nodoc
abstract class _$ConfigurationCopyWith<$Res>
    implements $ConfigurationCopyWith<$Res> {
  factory _$ConfigurationCopyWith(
          _Configuration value, $Res Function(_Configuration) then) =
      __$ConfigurationCopyWithImpl<$Res>;
  @override
  $Res call({bool isOfflineMode});
}

/// @nodoc
class __$ConfigurationCopyWithImpl<$Res>
    extends _$ConfigurationCopyWithImpl<$Res>
    implements _$ConfigurationCopyWith<$Res> {
  __$ConfigurationCopyWithImpl(
      _Configuration _value, $Res Function(_Configuration) _then)
      : super(_value, (v) => _then(v as _Configuration));

  @override
  _Configuration get _value => super._value as _Configuration;

  @override
  $Res call({
    Object isOfflineMode = freezed,
  }) {
    return _then(_Configuration(
      isOfflineMode: isOfflineMode == freezed
          ? _value.isOfflineMode
          : isOfflineMode as bool,
    ));
  }
}

/// @nodoc
class _$_Configuration implements _Configuration {
  const _$_Configuration({@required this.isOfflineMode})
      : assert(isOfflineMode != null);

  @override
  final bool isOfflineMode;

  @override
  String toString() {
    return 'Configuration(isOfflineMode: $isOfflineMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Configuration &&
            (identical(other.isOfflineMode, isOfflineMode) ||
                const DeepCollectionEquality()
                    .equals(other.isOfflineMode, isOfflineMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOfflineMode);

  @override
  _$ConfigurationCopyWith<_Configuration> get copyWith =>
      __$ConfigurationCopyWithImpl<_Configuration>(this, _$identity);
}

abstract class _Configuration implements Configuration {
  const factory _Configuration({@required bool isOfflineMode}) =
      _$_Configuration;

  @override
  bool get isOfflineMode;
  @override
  _$ConfigurationCopyWith<_Configuration> get copyWith;
}
