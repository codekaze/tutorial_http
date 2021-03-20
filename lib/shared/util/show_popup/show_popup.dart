import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future showPopup(Widget popupWidget) {
  return Get.defaultDialog(
    title: "",
    backgroundColor: Colors.transparent,
    content: popupWidget,
  );
}
