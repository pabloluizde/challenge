import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tokio_marine_challenge/core/themes/app_colors.dart';
import 'package:tokio_marine_challenge/core/widgets/appbar_default.dart';
import 'package:tokio_marine_challenge/core/widgets/drawer/drawer_default.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/controllers/home_controller.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/widgets/home_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    var scaffoldKey = GlobalKey<ScaffoldState>();
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      drawer: DrawerDefault(
        size: size,
      ),
      key: scaffoldKey,
      appBar: AppbarDefault(
        keys: scaffoldKey,
        size: size,
      ),
      body: HomeBody(
        size: size,
        homeController: homeController,
      ),
    );
  }
}
