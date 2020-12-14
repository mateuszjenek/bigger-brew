import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bigger_brew/application/auth/auth_bloc.dart';
import 'package:bigger_brew/application/beers/beers_bloc.dart';
import 'package:bigger_brew/application/options/options_bloc.dart';
import 'package:bigger_brew/domain/auth/value_objects.dart';
import 'package:bigger_brew/presentation/pages/item_form/item_form_page_argument.dart';
import 'package:bigger_brew/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ProfilePage extends StatelessWidget {
  final BeersBloc _beersBloc;
  const ProfilePage(this._beersBloc);

  static const mockPhotoUrl =
      "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fchrisalensula.org%2Fwp-content%2Fplugins%2Fall-in-one-seo-pack%2Fimages%2Fdefault-user-image.png&f=1&nofb=1";
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.loginPage),
          orElse: () {},
        );
      },
      builder: (context, state) => state.maybeMap(
        authenticated: (state) => Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.network(
                            state.user.profilePhotoURL
                                .getOrElse(() => URL(mockPhotoUrl))
                                .getOrCrash(),
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          state.user.email.getOrCrash(),
                          style: TextStyle(fontSize: 24.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          state.user.role == Role.ADMIN
                              ? "Administrator"
                              : "User",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                BlocProvider<OptionsBloc>(
                  create: (context) => GetIt.I.get<OptionsBloc>()
                    ..add(OptionsEvent.getConfiguration()),
                  child: BlocConsumer<OptionsBloc, OptionsState>(
                    listener: (context, state) => state.map(
                      loading: (_) {},
                      loaded: (_) => _beersBloc
                          .add(BeersEvent.synchronize(Completer<void>())),
                    ),
                    builder: (context, state) => state.map(
                      loading: (state) =>
                          Center(child: CircularProgressIndicator()),
                      loaded: (state) => Column(
                        children: [
                          ListTile(
                            //leading: Icon(Icons.app_registration),
                            title: Text("Register new product"),
                            onTap: () => ExtendedNavigator.of(context).push(
                              Routes.itemFormPage,
                              arguments: ItemFormPageArguments(
                                arguments:
                                    ItemFormPageArgument.newBeer(_beersBloc),
                              ),
                            ),
                          ),
                          Divider(),
                          SwitchListTile(
                            title: Text("Offline mode"),
                            value: state.configuration.isOfflineMode,
                            onChanged: (value) =>
                                BlocProvider.of<OptionsBloc>(context)
                                    .add(OptionsEvent.changeNetworkMode(value)),
                          ),
                          Divider(),
                          ListTile(
                            //leading: Icon(Icons.exit_to_app),
                            title: Text("Logout"),
                            onTap: () => context
                                .bloc<AuthBloc>()
                                .add(const AuthEvent.signedOut()),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        orElse: () => Container(),
      ),
    );
  }
}
