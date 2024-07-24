import 'package:flutter/material.dart';
import 'package:tokio_marine_challenge/core/widgets/appbar_default.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://pub.dev/packages/webview_flutter'));
  }

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppbarDefault(
        keys: scaffoldKey,
        size: size,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
