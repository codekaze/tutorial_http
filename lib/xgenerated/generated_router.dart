import 'package:demo_app/core.dart';
//@EndOfImport

class GeneratedRouter {
  static const String loginView = '/module/login';
  static const String homeView = '/module/home';
  //@EndOfRouterName

  static List<RouteItem> routers = [
    RouteItem(
      routeName: "/",
      layout: LoginView(),
    ),
    RouteItem(
      routeName: loginView,
      layout: LoginView(),
    ),
    RouteItem(
      routeName: homeView,
      layout: HomeView(),
    ),
    //@EndOfRouterItem
  ];
}
