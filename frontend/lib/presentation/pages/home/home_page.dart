import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bigger_brew/application/network_status/network_status_bloc.dart';
import 'package:bigger_brew/presentation/pages/home/widgets/network_state_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:bigger_brew/application/beers/beers_bloc.dart';
import 'package:bigger_brew/presentation/pages/home/widgets/beers_list.dart';
import 'package:bigger_brew/presentation/routes/router.gr.dart';

class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Bigger Brew"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () => ExtendedNavigator.of(context).push(
              Routes.profilePage,
              arguments:
                  ProfilePageArguments(beersBloc: context.bloc<BeersBloc>()),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
          var completer = Completer<void>();
          BlocProvider.of<BeersBloc>(context)
              .add(BeersEvent.synchronize(completer));
          return completer.future;
        },
        child: Column(
          children: [
            NetworkStateIndicator(),
            Expanded(child: BeersList()),
          ],
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BeersBloc>(
          create: (context) =>
              GetIt.instance.get<BeersBloc>()..add(const BeersEvent.fetch()),
        ),
        BlocProvider<NetworkStatusBloc>(
          create: (context) => GetIt.I.get<NetworkStatusBloc>()
        ),
      ],
      child: this,
    );
  }
}
