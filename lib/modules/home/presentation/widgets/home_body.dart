import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/controllers/home_controller.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/widgets/home_card_services.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/widgets/home_gradient_profile.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/widgets/home_quotes_list.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/widgets/home_title_indicator.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.size,
    required this.homeController,
  });

  final Size size;
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          HomeGradientProfile(size: size),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTitleIndicator(title: 'Cotar e Contratar'),
              HomeQuotesList(size: size, homeController: homeController),
              const HomeTitleIndicator(title: 'Minha Familia'),
              HomeCardServices(
                size: size,
                icon: Icons.add_circle_outline,
                description:
                    'Adicone aqui membros da sua família e compartilhe os seguros com eles.',
              ),
              const HomeTitleIndicator(title: 'Contratados'),
              HomeCardServices(
                size: size,
                icon: FontAwesomeIcons.faceFrown,
                description: 'Você ainda não possui seguros contratados.',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
