import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/controllers/login_controller.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/widgets/login_card.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/widgets/login_center_form.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/widgets/login_header_message.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/widgets/login_social_bottom.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({
    super.key,
    required this.loginController,
    required this.size,
  });

  final LoginController loginController;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColors.primaryColor, AppColors.accentColor],
                  ),
                ),
                child: const LoginHeaderMessage(),
              ),
            ),
            Expanded(
              child: Container(
                color: AppColors.backgroundColor,
                child: const Align(
                  alignment: Alignment.bottomCenter,
                  child: SocialLogin(),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Padding(
            padding: kIsWeb
                ? EdgeInsets.symmetric(horizontal: size.width * 0.3)
                : const EdgeInsets.only(left: 40, right: 40, bottom: 50),
            child: LoginCard(
              size: size,
              loginController: loginController,
              child: LoginCenterForm(
                loginController: loginController,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
