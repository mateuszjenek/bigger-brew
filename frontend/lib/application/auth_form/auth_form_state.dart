part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    @required EmailAddress email,
    @required Password password,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        email: EmailAddress(""),
        password: Password(""),
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
