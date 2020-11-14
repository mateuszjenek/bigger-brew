import 'package:auto_route/auto_route.dart';
import 'package:bigger_brew/application/auth/auth_bloc.dart';
import 'package:bigger_brew/injection.dart';
import 'package:flutter/material.dart' hide Router;
import 'package:bigger_brew/presentation/routes/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
      child: MaterialApp(
          theme: ThemeData.light().copyWith(
            primaryColor: Colors.green,
            appBarTheme: AppBarTheme(
              color: Colors.green,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              //centerTitle: true,
            ),
            primaryTextTheme: TextTheme(
              headline6: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          themeMode: ThemeMode.system,
          darkTheme: ThemeData.dark().copyWith(
            primaryColor: Colors.brown,
            appBarTheme: AppBarTheme(
              color: Colors.brown,
              elevation: 0,
              //centerTitle: true,
            ),
          ),
          title: "Bigger Brew",
          debugShowCheckedModeBanner: false,
          builder: ExtendedNavigator.builder(
            router: Router(),
          )
          // builder: (context, child) =>
          //     Theme(data: ThemeData.light(), child: child)),
          ),
    );
  }
}
