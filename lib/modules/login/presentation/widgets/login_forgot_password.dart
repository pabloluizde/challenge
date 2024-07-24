import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/controllers/login_controller.dart';
import '../../../../core/themes/app_colors.dart';

class LoginForgotPassword extends StatelessWidget {
  final LoginController controller;

  const LoginForgotPassword({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              height: 10,
              width: 10,
              child: Obx(
                () => Checkbox(
                  onChanged: controller.setCheckBox,
                  value: controller.checkBoxSelect.value,
                  shape: const CircleBorder(),
                  activeColor: AppColors.primaryColor,
                ),
              ),
            ),
            const SizedBox(width: 10),
            const AutoSizeText(
              'Lembrar Sempre',
              maxLines: 1,
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: const AutoSizeText(
            'Esqueceu a senha?',
            maxLines: 1,
            style: TextStyle(color: AppColors.primaryColor, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
