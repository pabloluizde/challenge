import 'package:get/get.dart';
import 'package:tokio_marine_challenge/core/themes/app_images.dart';
import 'package:tokio_marine_challenge/modules/home/infra/model/quote_services.dart';

class HomeController extends GetxController {
  final RxList<QuoteServices> list = <QuoteServices>[
    QuoteServices(icon: AppImages.iconCar, title: 'Automóvel'),
    QuoteServices(icon: AppImages.iconResidential, title: 'Residência'),
    QuoteServices(icon: AppImages.iconLife, title: 'Vida'),
    QuoteServices(icon: AppImages.iconPersonal, title: 'Acidentes Pessoais'),
    QuoteServices(icon: AppImages.iconMoto, title: 'Moto'),
    QuoteServices(icon: AppImages.iconEnterprise, title: 'Empresa'),
  ].obs;
}
