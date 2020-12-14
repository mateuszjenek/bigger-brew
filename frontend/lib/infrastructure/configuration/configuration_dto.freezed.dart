// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'configuration_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ConfigurationDto _$ConfigurationDtoFromJson(Map<String, dynamic> json) {
  return _ConfigurationDto.fromJson(json);
}

/// @nodoc
class _$ConfigurationDtoTearOff {
  const _$ConfigurationDtoTearOff();

// ignore: unused_element
  _ConfigurationDto call({@required bool isOfflineMode}) {
    return _ConfigurationDto(
      isOfflineMode: isOfflineMode,
    );
  }

// ignore: unused_element
  ConfigurationDto fromJson(Map<String, Object> json) {
    return ConfigurationDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ConfigurationDto = _$ConfigurationDtoTearOff();

/// @nodoc
mixin _$ConfigurationDto {
  bool get isOfflineMode;

  Map<String, dynamic> toJson();
  $ConfigurationDtoCopyWith<ConfigurationDto> get copyWith;
}

/// @nodoc
abstract class $ConfigurationDtoCopyWith<$Res> {
  factory $ConfigurationDtoCopyWith(
          ConfigurationDto value, $Res Function(ConfigurationDto) then) =
      _$ConfigurationDtoCopyWithImpl<$Res>;
  $Res call({bool isOfflineMode});
}

/// @nodoc
class _$ConfigurationDtoCopyWithImpl<$Res>
    implements $ConfigurationDtoCopyWith<$Res> {
  _$ConfigurationDtoCopyWithImpl(this._value, this._then);

  final ConfigurationDto _value;
  // ignore: unused_field
  final $Res Function(ConfigurationDto) _then;

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
abstract class _$ConfigurationDtoCopyWith<$Res>
    implements $ConfigurationDtoCopyWith<$Res> {
  factory _$ConfigurationDtoCopyWith(
          _ConfigurationDto value, $Res Function(_ConfigurationDto) then) =
      __$ConfigurationDtoCopyWithImpl<$Res>;
  @override
  $Res call({bool isOfflineMode});
}

/// @nodoc
class __$ConfigurationDtoCopyWithImpl<$Res>
    extends _$ConfigurationDtoCopyWithImpl<$Res>
    implements _$ConfigurationDtoCopyWith<$Res> {
  __$ConfigurationDtoCopyWithImpl(
      _ConfigurationDto _value, $Res Function(_ConfigurationDto) _then)
      : super(_value, (v) => _then(v as _ConfigurationDto));

  @override
  _ConfigurationDto get _value => super._value as _ConfigurationDto;

  @override
  $Res call({
    Object isOfflineMode = freezed,
  }) {
    return _then(_ConfigurationDto(
      isOfflineMode: isOfflineMode == freezed
          ? _value.isOfflineMode
          : isOfflineMode as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ConfigurationDto implements _ConfigurationDto {
  const _$_ConfigurationDto({@required this.isOfflineMode})
      : assert(isOfflineMode != null);

  factory _$_ConfigurationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ConfigurationDtoFromJson(json);

  @override
  final bool isOfflineMode;

  @override
  String toString() {
    return 'ConfigurationDto(isOfflineMode: $isOfflineMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfigurationDto &&
            (identical(other.isOfflineMode, isOfflineMode) ||
                const DeepCollectionEquality()
                    .equals(other.isOfflineMode, isOfflineMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isOfflineMode);

  @override
  _$ConfigurationDtoCopyWith<_ConfigurationDto> get copyWith =>
      __$ConfigurationDtoCopyWithImpl<_ConfigurationDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConfigurationDtoToJson(this);
  }
}

abstract class _ConfigurationDto implements ConfigurationDto {
  const factory _ConfigurationDto({@required bool isOfflineMode}) =
      _$_ConfigurationDto;

  factory _ConfigurationDto.fromJson(Map<String, dynamic> json) =
      _$_ConfigurationDto.fromJson;

  @override
  bool get isOfflineMode;
  @override
  _$ConfigurationDtoCopyWith<_ConfigurationDto> get copyWith;
}
