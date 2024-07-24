import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_marine_challenge/app/app_routes.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';

class HomeCardQuotes extends StatelessWidget {
  const HomeCardQuotes({
    super.key,
    required this.size,
    required this.icon,
    required this.title,
  });

  final Size size;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: kIsWeb
          ? () {}
          : () {
              Modular.to.pushNamed(AppRoutes.web);
            },
      child: Container(
        width: kIsWeb ? 150 : size.width * 0.27,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.darkGrey,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  child: Image.asset(
                icon,
                height: 40,
              )),
              AutoSizeText(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
