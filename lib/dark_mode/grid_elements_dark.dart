import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';

class GridElements extends StatelessWidget {
  final String text;
  final String image;
  const GridElements({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140,
          width: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          text,
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          '45 MIN SLEEP MUSIC',
          style: GoogleFonts.montserrat(
              color: AppColors.subtext,
              fontSize: 15,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
