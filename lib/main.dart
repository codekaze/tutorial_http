import 'package:demo_app/main_setup.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/shared/theme/theme.dart';
import 'package:get/get.dart';
import 'module/navigation/mobile_navigation/view/mobile_navigation_view.dart';

void main() async {
  await MainSetup.setup();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: appThemeData,
    defaultTransition: Transition.fade,
    home: getHome(),
  ));
}

Widget getHome() {
  return MainNavigationView();
}
