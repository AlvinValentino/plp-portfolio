import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_port_folio/component.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEF1F8),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: NavBar(),
        iconTheme: IconThemeData(size: 22, color: Colors.black),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: _kartuProfil(),
          ),
        ),
      ),
    );
  }

  Widget _kartuProfil() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 170,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // banner gradasi
                Container(
                  height: 120,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF4338CA), Color(0xFF6366F1)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                // avatar inisial
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      radius: 52,
                      backgroundColor: Color(0xFF4338CA),
                      child: Text(
                        'AV',
                        style: GoogleFonts.poppins(
                          fontSize: 38,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
 
          const SizedBox(height: 14),
 
          Text(
            'Alvin Valentino',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1E1B33)
            ),
          ),
          const SizedBox(height: 4),
 
          Container(
            margin: const EdgeInsets.only(top: 2),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            decoration: BoxDecoration(
              color:  Color(0xFF4338CA).withOpacity(0.10),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Mahasiswa',
              style: GoogleFonts.poppins(
                fontSize: 12.5,
                fontWeight: FontWeight.w500,
                color:  Color(0xFF4338CA),
              ),
            ),
          ),
 
          const SizedBox(height: 24),
 
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 28),
            child: Column(
              children: [
                _barisInfo(Icons.badge_outlined, 'NIM', '23110002'),
                _garis(),
                _barisInfo(Icons.school_outlined, 'Program Studi', 'Sistem dan Teknologi Informasi'),
                _garis(),
                _barisInfo(Icons.access_time_rounded, 'Kelas', 'STI-B'),
              ],
            ),
          ),
        ],
      ),
    );
  }
 
  Widget _barisInfo(IconData ikon, String label, String nilai) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Color(0xFF4338CA).withOpacity(0.10),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(ikon, color: Color(0xFF4338CA), size: 22),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: const Color(0xFF8A8AA0),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  nilai,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: Color(0xFF1E1B33),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _garis() {
    return Container(
      height: 1,
      color: const Color(0xFFECECF2),
    );
  }
}
