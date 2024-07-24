import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/controllers/login_controller.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/widgets/login_button.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({
    super.key,
    required this.loginController,
    required this.child,
    required this.size,
  });

  final LoginController loginController;
  final Size size;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 500),
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            decoration: BoxDecoration(
                color: AppColors.backgroundBox,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: const Offset(3, 6), // changes position of shadow
                  ),
                ]),
            width: kIsWeb ? size.width * 0.22 : size.width * 0.8,
            height: kIsWeb ? size.height * 0.36 : size.height * 0.38,
            child: child,
          ),
          Positioned(
            bottom: kIsWeb ? -50 : -60,
            child: LoginButton(
              onTap: () async {
                if (loginController.formKey.value.currentState!.validate()) {
                  await loginController.login();
                }
              },
              size: size,
            ),
          ),
        ],
      ),
    );
  }
}
