import 'package:flutter/material.dart';
import 'package:tokio_marine_challenge/core/utils/validators.dart';
import 'package:tokio_marine_challenge/core/widgets/text_form_field_default.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/controllers/login_controller.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/widgets/login_forgot_password.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/widgets/login_header_select.dart';

class LoginCenterForm extends StatelessWidget {
  const LoginCenterForm({
    super.key,
    required this.loginController,
  });

  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginController.formKey.value,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LoginHeaderSelect(
            loginController: loginController,
          ),
          TextFormFieldDefault(
            validator: (value) => Validators().validateEmail(value),
            controller: loginController.cpf.value,
            hintText: 'Email',
          ),
          TextFormFieldDefault(
            controller: loginController.password.value,
            hintText: 'Senha',
          ),
          LoginForgotPassword(
            controller: loginController,
          ),
        ],
      ),
    );
  }
}
