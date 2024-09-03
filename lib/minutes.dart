import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMinutes extends StatelessWidget {
  int mins;
  MyMinutes({super.key, required this.mins});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        mins < 10 ? '0' + mins.toString() : mins.toString(),
        style: GoogleFonts.montserrat(
            textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
      ),
    );
  }
}
