import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:bigger_brew/domain/auth/user.dart' as domain;
import 'package:bigger_brew/domain/auth/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  Future<Option<domain.User>> toDomain(User user) async {
    if (user == null) {
      return none();
    }
    var token = await user.getIdTokenResult(true);
    bool isAdmin =
        token.claims["admin"] == null ? false : token.claims["admin"];
    return some(
      domain.User(
          email: EmailAddress(user.email),
          role: isAdmin ? Role.ADMIN : Role.USER,
          token: JsonWebToken(token.token),
          profilePhotoURL:
              user.photoURL == null ? none() : some(URL(user.photoURL))),
    );
  }
}
