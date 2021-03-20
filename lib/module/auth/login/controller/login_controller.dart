import 'package:demo_app/core.dart';

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
