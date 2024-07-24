import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';
import 'package:tokio_marine_challenge/core/themes/app_images.dart';

class LoginHeaderMessage extends StatelessWidget {
  const LoginHeaderMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment:
              kIsWeb ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:
                  kIsWeb ? MainAxisAlignment.center : MainAxisAlignment.start,
              children: [
                SizedBox(
                    height: 25,
                    width: 25,
                    child: Image.asset(AppImages.logoWhite)),
                SizedBox(height: 25, child: Image.asset(AppImages.logoText)),
              ],
            ),
            const SizedBox(height: 20),
            const AutoSizeText(
              'Bem-vindo!',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const AutoSizeText(
              'Aqui você garante seus seguros e de seus familiares em poucos cliques!',
              style: TextStyle(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
