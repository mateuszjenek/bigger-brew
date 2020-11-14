import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:bigger_brew/application/auth_form/auth_form_bloc.dart';
import 'package:bigger_brew/presentation/pages/login/widgets/login_form.dart';

class LoginPage extends StatelessWidget implements AutoRouteWrapper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment:
                        MediaQuery.of(context).viewInsets.bottom == 0
                            ? MainAxisAlignment.center
                            : MainAxisAlignment.start,
                    children: [
                      Image.network(
                        "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.homebrewersassociation.org%2Fwp-content%2Fuploads%2Ficon_ingredients_hops%25402x.png&f=1&nofb=1",
                        width: MediaQuery.of(context).viewInsets.bottom == 0
                            ? 200
                            : 50,
                      ),
                      MediaQuery.of(context).viewInsets.bottom == 0
                          ? Container()
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Bigger Brew",
                                style: TextStyle(fontSize: 16.0),
                              ),
                            )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: LoginForm(),
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthFormBloc>(
          lazy: false,
          create: (context) => GetIt.instance<AuthFormBloc>(),
        )
      ],
      child: this,
    );
  }
}
