import 'package:flutter/material.dart';
import 'package:my_port_folio/mobile/home_mobile.dart';
import 'package:my_port_folio/web/home_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth >= 1000) {
            return HomeWeb();
          } else {
            return HomeMobile();
          }
        },
      ),
    );
  }
}
