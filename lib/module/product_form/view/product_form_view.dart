import 'package:flutter/material.dart';
import 'package:olx/core.dart';
import 'package:olx/module/product_form/controller/product_form_controller.dart';

import 'package:get/get.dart';

class ProductFormView extends StatelessWidget {
  final controller = Get.put(ProductFormController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<ProductFormController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Product Form"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ExTextField(
                    id: "product_name",
                    label: "Product Name",
                  ),
                  ExTextField(
                    id: "price",
                    label: "price",
                  ),
                  ExTextField(
                    id: "memo",
                    label: "memo",
                  ),
                  ExButton(
                    label: "Save",
                    onPressed: () => controller.save(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
