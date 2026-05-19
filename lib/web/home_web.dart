import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: Container(
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsetsGeometry.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              child: CircleAvatar(
                radius: 102,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/wolverine.jpg"),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Text(
                    "KFC",
                    style: GoogleFonts.bonaNova(
                      fontSize: 80,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Text(
                    "Jagonya Ayam !!",
                    style: GoogleFonts.vastShadow(fontSize: 40),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
