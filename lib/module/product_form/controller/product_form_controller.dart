import 'dart:convert';

import 'package:get/get.dart';
import 'package:olx/core.dart';
import 'package:olx/module/product_form/view/product_form_view.dart';
import 'package:http/http.dart' as http;

class ProductFormController extends GetxController {
  ProductFormView view;

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

  save() async {
    // showLoading();

    var productName = Input.get("product_name");
    var price = Input.get("price");
    var memo = Input.get("memo");

    print({
      "product_name": productName,
      "price": int.parse(price),
      "memo": memo,
    });

    var url = "http.codekaze.com/olx/public/product";
    var response = await http.post(
      Uri.parse(url),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        "product_name": productName,
        "price": int.parse(price),
        "memo": memo,
      }),
    );

    hideLoading();
  }
}
