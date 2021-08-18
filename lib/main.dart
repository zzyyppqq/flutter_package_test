import 'package:css_colors/css_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoPage2(),
    );
  }
}

class DemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(color: CSSColors.orange));
  }
}

class DemoPage2 extends StatelessWidget {
  launchURL() {
    launch('https://flutter.dev');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: launchURL,
          child: Text('Show Flutter homepage'),
        ),
      ),
    );
  }
}
