import 'package:olx/core.dart';
import 'package:olx/module/product/view/product_view.dart';
import 'package:olx/module/product_form/view/product_form_view.dart';
//@EndOfImport

class GeneratedRouter {
  static const String loginView = '/module/login';
  static const String homeView = '/module/home';
  static const String accountView = '/module/account';
  static const String productView = '/module/product';
  static const String productformView = '/module/product_form';
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
    RouteItem(
      routeName: accountView,
      layout: AccountView(),
    ),
    RouteItem(
      routeName: productView,
      layout: ProductView(),
    ),
    RouteItem(
      routeName: productformView,
      layout: ProductFormView(),
    ),
    //@EndOfRouterItem
  ];
}
