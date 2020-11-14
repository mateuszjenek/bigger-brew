part of 'auth_form_bloc.dart';

@freezed
abstract class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.emailChanged(String email) = EmailChanged;
  const factory AuthFormEvent.passwordChanged(String password) =
      PasswordChanged;
  const factory AuthFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory AuthFormEvent.loginWithEmailAndPasswordPressed() =
      LoginWithEmailAndPasswordPressed;
  const factory AuthFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
