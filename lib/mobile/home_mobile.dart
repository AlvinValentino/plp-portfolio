import 'package:flutter/material.dart';
import 'package:my_port_folio/component.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: NavBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage("ggs.png"),
            ),
            const SizedBox(height: 20),
            Text(
              "Alvin Valentino",
              style: GoogleFonts.vastShadow(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            Text(
              "NIM: 23110002",
              style: GoogleFonts.vastShadow(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              "Prodi: Sistem dan Teknologi Informasi",
              style: GoogleFonts.vastShadow(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              "Kelas: STI-B",
              style: GoogleFonts.vastShadow(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}