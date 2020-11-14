// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required EmailAddress email,
      @required Role role,
      @required JsonWebToken token,
      @required Option<URL> profilePhotoURL}) {
    return _User(
      email: email,
      role: role,
      token: token,
      profilePhotoURL: profilePhotoURL,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  EmailAddress get email;
  Role get role;
  JsonWebToken get token;
  Option<URL> get profilePhotoURL;

  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Role role,
      JsonWebToken token,
      Option<URL> profilePhotoURL});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object email = freezed,
    Object role = freezed,
    Object token = freezed,
    Object profilePhotoURL = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as EmailAddress,
      role: role == freezed ? _value.role : role as Role,
      token: token == freezed ? _value.token : token as JsonWebToken,
      profilePhotoURL: profilePhotoURL == freezed
          ? _value.profilePhotoURL
          : profilePhotoURL as Option<URL>,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Role role,
      JsonWebToken token,
      Option<URL> profilePhotoURL});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object email = freezed,
    Object role = freezed,
    Object token = freezed,
    Object profilePhotoURL = freezed,
  }) {
    return _then(_User(
      email: email == freezed ? _value.email : email as EmailAddress,
      role: role == freezed ? _value.role : role as Role,
      token: token == freezed ? _value.token : token as JsonWebToken,
      profilePhotoURL: profilePhotoURL == freezed
          ? _value.profilePhotoURL
          : profilePhotoURL as Option<URL>,
    ));
  }
}

/// @nodoc
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.email,
      @required this.role,
      @required this.token,
      @required this.profilePhotoURL})
      : assert(email != null),
        assert(role != null),
        assert(token != null),
        assert(profilePhotoURL != null);

  @override
  final EmailAddress email;
  @override
  final Role role;
  @override
  final JsonWebToken token;
  @override
  final Option<URL> profilePhotoURL;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(email: $email, role: $role, token: $token, profilePhotoURL: $profilePhotoURL)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('token', token))
      ..add(DiagnosticsProperty('profilePhotoURL', profilePhotoURL));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.token, token) ||
                const DeepCollectionEquality().equals(other.token, token)) &&
            (identical(other.profilePhotoURL, profilePhotoURL) ||
                const DeepCollectionEquality()
                    .equals(other.profilePhotoURL, profilePhotoURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(token) ^
      const DeepCollectionEquality().hash(profilePhotoURL);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required EmailAddress email,
      @required Role role,
      @required JsonWebToken token,
      @required Option<URL> profilePhotoURL}) = _$_User;

  @override
  EmailAddress get email;
  @override
  Role get role;
  @override
  JsonWebToken get token;
  @override
  Option<URL> get profilePhotoURL;
  @override
  _$UserCopyWith<_User> get copyWith;
}
