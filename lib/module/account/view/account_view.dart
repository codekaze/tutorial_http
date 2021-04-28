import 'package:olx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountView extends StatelessWidget {
  final controller = Get.put(AccountController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<AccountController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Account"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ExTextField(
                  id: "full_name",
                  label: "Full Name",
                ),
                ExDatePicker(
                  id: "birth_date",
                  label: "Birth Date",
                ),
                ExCombo(
                  id: "gender",
                  label: "Gender",
                  items: [
                    {
                      "label": "Male",
                      "value": "Male",
                    },
                    {
                      "label": "Female",
                      "value": "Female",
                    }
                  ],
                ),
                ExRadio(
                  id: "gender",
                  label: "Gender",
                  value: "Male",
                  onChanged: (value) {},
                  items: [
                    {
                      "label": "Male",
                      "value": "Male",
                    },
                    {
                      "label": "Female",
                      "value": "Female",
                    }
                  ],
                ),
                Spacer(),
                ExButton(
                  label: "save",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
