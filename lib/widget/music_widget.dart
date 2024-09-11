import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicWidget extends StatelessWidget {
  final String musictitle;
  final String musicartist;
  final String musicimagePath;
  const MusicWidget(
      {super.key,
      required this.musicimagePath,
      required this.musictitle,
      required this.musicartist});

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
      child: Row(
        children: [
          Image.asset(musicimagePath),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  musictitle,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white),
                ),
                Text(
                  musicartist,
                  style: GoogleFonts.montserrat(color: Colors.white),
                )
              ],
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 35,
              ))
        ],
      ),
    );
  }
}
