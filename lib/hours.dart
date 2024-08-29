import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHours extends StatelessWidget {
  int hrs;
   MyHours({super.key, required this.hrs});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          hrs.toString(),
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 20 )),
        ),
      ),
    );
  }
}
