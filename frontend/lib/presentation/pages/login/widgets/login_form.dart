import 'package:auto_route/auto_route.dart';
import 'package:bigger_brew/application/auth/auth_bloc.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bigger_brew/application/auth_form/auth_form_bloc.dart';
import 'package:bigger_brew/presentation/routes/router.gr.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthFormBloc, AuthFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                FlushbarHelper.createError(
                  message: failure.map(
                    // Use localized strings here in your apps
                    cancelledByUser: (_) => 'Cancelled',
                    serverError: (_) => 'Server error',
                    emailAlreadyInUse: (_) => 'Email already in use',
                    invalidEmailAndPasswordCombination: (_) =>
                        'Invalid email and password combination',
                  ),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.of(context).replace(Routes.homePage);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return SafeArea(
          top: false,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) => context
                    .bloc<AuthFormBloc>()
                    .add(AuthFormEvent.emailChanged(value)),
                validator: (_) =>
                    context.bloc<AuthFormBloc>().state.email.value.fold(
                          (f) => f.maybeMap(
                            invalidEmail: (_) => 'Invalid email',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                decoration: InputDecoration(
                  labelText: "email",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              TextFormField(
                obscureText: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value) {
                  context
                      .bloc<AuthFormBloc>()
                      .add(AuthFormEvent.passwordChanged(value));
                },
                validator: (_) {
                  return context.bloc<AuthFormBloc>().state.password.value.fold(
                        (f) => f.maybeMap(
                          shortPassword: (_) => 'Short password',
                          orElse: () => null,
                        ),
                        (_) => null,
                      );
                },
                decoration: InputDecoration(
                  labelText: "password",
                  prefixIcon: Icon(Icons.vpn_key),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
                child: Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        child: Text("Register"),
                        onPressed: () => context.bloc<AuthFormBloc>().add(
                            AuthFormEvent
                                .registerWithEmailAndPasswordPressed()),
                      ),
                    ),
                    Expanded(
                      child: RaisedButton(
                        child: Text("Login"),
                        onPressed: () => context.bloc<AuthFormBloc>().add(
                            AuthFormEvent.loginWithEmailAndPasswordPressed()),
                      ),
                    ),
                  ],
                ),
              ),
              Text("or"),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
                child: GoogleSignInButton(
                  darkMode: MediaQuery.of(context).platformBrightness ==
                      Brightness.dark,
                  centered: true,
                  onPressed: () => context
                      .bloc<AuthFormBloc>()
                      .add(AuthFormEvent.signInWithGooglePressed()),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
