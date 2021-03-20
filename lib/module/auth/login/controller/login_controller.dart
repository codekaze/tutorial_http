import 'package:demo_app/module/auth/login/view/login_view.dart';
import 'package:demo_app/module/navigation/mobile_navigation/view/mobile_navigation_view.dart';

import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginView view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void doLogin() async {
    Get.off(MainNavigationView());
  }
}
