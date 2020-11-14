import 'package:dartz/dartz.dart';
import 'package:bigger_brew/domain/core/value_failure.dart';
import 'package:bigger_brew/domain/core/value_object.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  // Maybe not the most robust way of email validation but it's good enough
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

enum Role { ADMIN, USER }

class JsonWebToken extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory JsonWebToken(String input) {
    assert(input != null);
    // TODO: Add validation
    return JsonWebToken._(right(input));
  }

  const JsonWebToken._(this.value);
}

class URL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory URL(String input) {
    assert(input != null);
    // TODO: Add validation
    return URL._(right(input));
  }

  const URL._(this.value);
}
