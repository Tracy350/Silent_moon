import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';

class Tabcontent extends StatelessWidget {
  const Tabcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: AppColors.buttoncolor),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Focus Attention',
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '10 MINS',
                      style: GoogleFonts.montserrat(
                          fontSize: 15, color: AppColors.subtext),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      border: Border.all()),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow_rounded,
                        color: AppColors.subtext,
                        size: 30,
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Focus Attention',
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '10 MINS',
                      style: GoogleFonts.montserrat(
                          fontSize: 15, color: AppColors.subtext),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      border: Border.all()),
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow_rounded,
                        color: AppColors.subtext,
                        size: 30,
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Focus Attention',
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      '10 MINS',
                      style: GoogleFonts.montserrat(
                          fontSize: 15, color: AppColors.subtext),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
