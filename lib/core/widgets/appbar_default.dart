import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';
import 'package:tokio_marine_challenge/core/themes/app_images.dart';

class AppbarDefault extends AppBar {
  final Size size;
  final GlobalKey<ScaffoldState> keys;

  AppbarDefault({
    super.key,
    required this.size,
    required this.keys,
  }) : super(
            leading: GestureDetector(
              child: Image.asset(
                AppImages.iconDrawer,
              ),
              onTap: () => keys.currentState?.openDrawer(),
            ),
            centerTitle: true,
            backgroundColor: AppColors.backgroundColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(height: size.height * 0.035, AppImages.logoWhite),
                Image.asset(height: size.height * 0.035, AppImages.logoText),
              ],
            ),
            actions: [
              Stack(
                children: <Widget>[
                  IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.bell,
                      color: AppColors.white,
                    ),
                    onPressed: () {},
                  ),
                  Positioned(
                    right: 12,
                    top: 15,
                    child: Container(
                      height: 5,
                      width: 5,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 10,
                        minHeight: 10,
                      ),
                    ),
                  ),
                ],
              )
            ]);
}
