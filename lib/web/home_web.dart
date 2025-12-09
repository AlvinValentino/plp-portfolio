import 'package:flutter/material.dart';
import 'package:my_port_folio/component.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: NavBar(),
        iconTheme: IconThemeData(size: 15, color: Colors.black),
      ),
    );
  }
}
