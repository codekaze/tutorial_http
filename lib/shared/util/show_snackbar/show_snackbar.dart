import 'package:olx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

showSnackbar({
  String title = "Info",
  String message = "",
  IconData icon = Icons.info,
}) {
  Get.snackbar(
    title,
    message,
    backgroundColor: theme.mainColor,
    colorText: Colors.white,
    icon: Icon(icon),
  );
}
