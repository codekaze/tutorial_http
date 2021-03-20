import 'package:flutter/material.dart';
import 'package:demo_app/module/home/controller/home_controller.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<HomeController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
        );
      },
    );
  }
}
