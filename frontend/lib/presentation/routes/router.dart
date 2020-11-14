import 'package:auto_route/auto_route_annotations.dart';
import 'package:bigger_brew/presentation/pages/home/home_page.dart';
import 'package:bigger_brew/presentation/pages/item_form/item_form_page.dart';
import 'package:bigger_brew/presentation/pages/login/login_page.dart';
import 'package:bigger_brew/presentation/pages/profile/profile_page.dart';
import 'package:bigger_brew/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: SplashPage, initial: true),
    AdaptiveRoute(page: LoginPage),
    AdaptiveRoute(page: HomePage),
    AdaptiveRoute(page: ProfilePage),
    AdaptiveRoute(page: ItemFormPage),
  ],
)
class $Router {}
