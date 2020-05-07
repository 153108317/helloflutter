import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebRoute extends StatelessWidget {
  final String title;
  final String url;

  WebRoute(this.title, this.url);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WebviewScaffold(
      url: url,
      appBar: AppBar(
        title: Text(title),
      ),
      withJavascript: true,
      withLocalStorage: true,
      withZoom: true,
    );
  }
}
