import 'package:demo_app/data/model/route_item.dart';
import 'package:demo_app/module/auth/login/view/login_view.dart';
import 'package:demo_app/module/home/view/home_view.dart';
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
