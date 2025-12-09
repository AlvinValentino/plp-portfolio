import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool isHome = false;
  bool isAbout = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isHome = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHome = false;
            });
          },
          child: Text(
            "Home",
            style: isHome
                ? GoogleFonts.gabriela(
                    color: Colors.blue,
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blueAccent,
                  )
                : GoogleFonts.odibeeSans(color: Colors.green, fontSize: 20),
          ),
        ),
        MouseRegion(
          onEnter: (_) {
            setState(() {
              isAbout = true;
            });
          },
          onExit: (_) {
            setState(() {
              isAbout = false;
            });
          },
          child: Text(
            "About Me",
            style: isAbout
                ? GoogleFonts.gabriela(
                    color: Colors.blue,
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blueAccent,
                  )
                : GoogleFonts.babylonica(color: Colors.green, fontSize: 30),
          ),
        ),
      ],
    );
  }
}
