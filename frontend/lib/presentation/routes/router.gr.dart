// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../../application/beers/beers_bloc.dart';
import '../pages/home/home_page.dart';
import '../pages/item_form/item_form_page.dart';
import '../pages/item_form/item_form_page_argument.dart';
import '../pages/login/login_page.dart';
import '../pages/profile/profile_page.dart';
import '../pages/splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String loginPage = '/login-page';
  static const String homePage = '/home-page';
  static const String profilePage = '/profile-page';
  static const String itemFormPage = '/item-form-page';
  static const all = <String>{
    splashPage,
    loginPage,
    homePage,
    profilePage,
    itemFormPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.loginPage, page: LoginPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.profilePage, page: ProfilePage),
    RouteDef(Routes.itemFormPage, page: ItemFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    LoginPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LoginPage().wrappedRoute(context),
        settings: data,
      );
    },
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const HomePage().wrappedRoute(context),
        settings: data,
      );
    },
    ProfilePage: (data) {
      final args = data.getArgs<ProfilePageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ProfilePage(args.beersBloc),
        settings: data,
      );
    },
    ItemFormPage: (data) {
      final args = data.getArgs<ItemFormPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            ItemFormPage(args.arguments).wrappedRoute(context),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProfilePage arguments holder class
class ProfilePageArguments {
  final BeersBloc beersBloc;
  ProfilePageArguments({@required this.beersBloc});
}

/// ItemFormPage arguments holder class
class ItemFormPageArguments {
  final ItemFormPageArgument arguments;
  ItemFormPageArguments({@required this.arguments});
}
