import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bigger_brew/domain/auth/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required EmailAddress email,
    @required Role role,
    @required JsonWebToken token,
    @required Option<URL> profilePhotoURL,
  }) = _User;
}
