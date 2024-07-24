import 'package:flutter/material.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/controllers/home_controller.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/widgets/home_card_quotes.dart';

class HomeQuotesList extends StatelessWidget {
  const HomeQuotesList({
    super.key,
    required this.size,
    required this.homeController,
  });

  final Size size;
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.12,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          scrollDirection: Axis.horizontal,
          itemCount: homeController.list.length,
          itemBuilder: (context, index) {
            return HomeCardQuotes(
              size: size,
              icon: homeController.list[index].icon,
              title: homeController.list[index].title,
            );
          }),
    );
  }
}
