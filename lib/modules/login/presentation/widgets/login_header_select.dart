import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';

import '../controllers/login_controller.dart';

class LoginHeaderSelect extends StatelessWidget {
  final LoginController loginController;
  const LoginHeaderSelect({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              TextButton(
                onPressed: () {
                  loginController.setHeader(true);
                },
                child: AutoSizeText(
                  'Entrar',
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: loginController.headerSelect.value
                        ? AppColors.primaryColor
                        : AppColors.white,
                    decoration: loginController.headerSelect.value
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ),
                ),
              ),
              AnimatedContainer(
                  color: loginController.headerSelect.value
                      ? AppColors.primaryColor
                      : AppColors.white,
                  height: 2,
                  width: loginController.headerSelect.value ? 60 : 0,
                  duration: const Duration(milliseconds: 150))
            ],
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    loginController.setHeader(false);
                  },
                  child: AutoSizeText(
                    'Cadastrar',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: !loginController.headerSelect.value
                          ? AppColors.primaryColor
                          : AppColors.white,
                      decoration: !loginController.headerSelect.value
                          ? TextDecoration.underline
                          : TextDecoration.none,
                    ),
                  ),
                ),
                AnimatedContainer(
                    color: !loginController.headerSelect.value
                        ? AppColors.primaryColor
                        : AppColors.white,
                    height: 2,
                    width: !loginController.headerSelect.value ? 60 : 0,
                    duration: const Duration(milliseconds: 150))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
