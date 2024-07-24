import 'package:flutter_modular/flutter_modular.dart';
import 'package:tokio_marine_challenge/app/app_routes.dart';
import 'package:tokio_marine_challenge/modules/home/presentation/pages/home_page.dart';
import 'package:tokio_marine_challenge/modules/login/presentation/pages/login_page.dart';
import 'package:tokio_marine_challenge/modules/web_view/presentation/pages/webview_page.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(AppRoutes.login, child: (context) => const LoginPage());
    r.child(AppRoutes.home, child: (context) => const HomePage());
    r.child(AppRoutes.web, child: (context) => const WebViewPage());
  }
}
