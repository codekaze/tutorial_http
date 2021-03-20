import 'package:demo_app/module/auth/login/controller/login_controller.dart';
import 'package:demo_app/shared/theme/theme.dart';
import 'package:demo_app/shared/widget/button/button.dart';
import 'package:demo_app/shared/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          body: Center(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 400.0,
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ExTextField(
                    id: "email",
                    label: "Email",
                    value: "demo@gmail.com",
                  ),
                  ExTextField(
                    id: "password",
                    label: "Password",
                    value: "123456",
                    textFieldType: TextFieldType.password,
                  ),
                  Container(
                    width: Get.width,
                    child: ExButton(
                      color: theme.success,
                      label: "Login",
                      onPressed: () => controller.doLogin(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Register",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Forgot Password?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
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
