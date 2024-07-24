import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';

class DrawerMenuItens extends StatelessWidget {
  final String title;
  const DrawerMenuItens({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.settings,
            color: AppColors.primaryColor,
          ),
          title: AutoSizeText(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: AppColors.white,
            ),
          ),
          onTap: () {},
        ),
        const Divider(
          color: AppColors.darkBlue,
        )
      ],
    );
  }
}
