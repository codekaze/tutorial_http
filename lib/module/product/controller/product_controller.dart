import 'dart:convert';

import 'package:get/get.dart';
import 'package:olx/module/product/view/product_view.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  bool loading = false;
  ProductView view;
  List items = [];

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

  loadData() async {
    loading = true;
    update();

    var request = http.Request(
      'GET',
      Uri.parse('http://codekaze.com/olx/public/product'),
    );

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      String jsonString = await response.stream.bytesToString();
      var responseMap = await jsonDecode(jsonString);

      var message = responseMap["message"];
      items = responseMap["data"];
      update();
    } else {
      print(response.reasonPhrase);
    }

    loading = false;
    update();
  }
}
