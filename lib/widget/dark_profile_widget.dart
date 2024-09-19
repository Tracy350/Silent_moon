import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkProfileWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  const DarkProfileWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 6, 39, 129),
            borderRadius: BorderRadius.circular(20)),
        height: 70,
        width: MediaQuery.sizeOf(context).width,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.arrow_forward,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
