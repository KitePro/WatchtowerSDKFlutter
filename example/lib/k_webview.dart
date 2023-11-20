import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class KWebView extends StatefulWidget {
  const KWebView({super.key});

  @override
  State<StatefulWidget> createState() => _KWebViewState();
}

class _KWebViewState extends State<KWebView> {
  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse('https://ya.ru'),
              ),
              onWebViewCreated: (controller) {
                webViewController = controller;
              },
              onLoadStart: (controller, url) {
                setState(() {});
              },
              onProgressChanged: (controller, progress) async {},
              onLoadError: (controller, url, code, message) {},
              onLoadHttpError: (controller, url, code, message) {},
              onLoadStop: (controller, url) {},
            ),
          ],
        ),
      ),
    );
  }
}
