import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/controllers/login_controller.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/widgets/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginController());
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LoginBody(
        loginController: loginController,
        size: size,
      ),
    );
  }
}
