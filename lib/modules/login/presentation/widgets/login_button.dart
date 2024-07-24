import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';

class LoginButton extends StatelessWidget {
  final Size size;
  final Function()? onTap;
  const LoginButton({super.key, required this.size, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 12,
              color: const Color(0xFF2A2A39),
            )),
        child: Container(
          height: kIsWeb ? size.height * 0.08 : size.height * 0.10,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primaryColor,
                AppColors.accentColor,
              ],
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.arrow_forward,
              size: 50,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
