import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio_marine_challenge/core/controllers/drawer_controller.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';
import 'package:tokio_marine_challenge/core/widgets/drawer/drawer_bottom.dart';
import 'package:tokio_marine_challenge/core/widgets/drawer/drawer_menu_item.dart';
import 'package:tokio_marine_challenge/core/widgets/drawer/drawer_profile_avatar.dart';

class DrawerDefault extends StatelessWidget {
  final Size size;
  const DrawerDefault({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final drawerController = Get.put(DrawerMenuController());
    return Drawer(
      backgroundColor: AppColors.backgroundColor,
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerProfileAvatar(
            size: size,
          ),
          ...drawerController.drawerItems.map(
            (value) => DrawerMenuItens(
              title: value,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: AutoSizeText(
              'Sair',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColors.primaryColor),
            ),
          ),
          const SizedBox(height: 45),
          DrawerBottom(size: size),
        ],
      )),
    );
  }
}
