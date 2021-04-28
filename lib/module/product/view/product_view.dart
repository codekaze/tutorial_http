import 'package:flutter/material.dart';
import 'package:olx/core.dart';
import 'package:olx/module/product/controller/product_controller.dart';

import 'package:get/get.dart';
import 'package:olx/module/product_form/view/product_form_view.dart';

class ProductView extends StatelessWidget {
  final controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<ProductController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Product"),
            actions: [
              InkWell(
                onTap: () async {
                  await Get.to(ProductFormView());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              ExButton(
                label: "Load Data",
                onPressed: () => controller.loadData(),
              ),
              Expanded(
                child: controller.loading
                    ? Center(
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/c/c7/Loading_2.gif",
                        ),
                      )
                    : Container(
                        child: ListView.builder(
                          itemCount: controller.items.length,
                          itemBuilder: (context, index) {
                            var item = controller.items[index];

                            return Card(
                              color: Colors.red[100],
                              child: ListTile(
                                leading: Text(item["product_name"]),
                                subtitle: Text("${item["price"]}"),
                              ),
                            );
                          },
                        ),
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
