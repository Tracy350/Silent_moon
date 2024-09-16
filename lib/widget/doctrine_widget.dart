import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctrineWidget extends StatelessWidget {
  final String doctrinetitle;
  final String doctrinesubtext;

  const DoctrineWidget(
      {super.key, required this.doctrinesubtext, required this.doctrinetitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(
                '1',
                style: GoogleFonts.montserrat(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctrinetitle,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  Text(
                    doctrinesubtext,
                    style: GoogleFonts.montserrat(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
