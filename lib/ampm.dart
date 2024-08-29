import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ampm extends StatelessWidget {
  final bool isitam;
  Ampm({super.key, required this.isitam});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          isitam == true ? 'AM' : 'PM',
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
        ),
      ),
    );
  }
}
