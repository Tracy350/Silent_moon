import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';

class Meditate extends StatelessWidget {
  const Meditate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          Text(
            'Meditate',
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700, fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'we can learn how to recognize when our minds are doing their normal everyday acrobatics.',
              style: GoogleFonts.montserrat(
                  color: AppColors.subtext, fontSize: 17),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate1.png'),
                    ),
                    Text(
                      'All',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate2.png'),
                    ),
                    Text(
                      'My',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate3.png'),
                    ),
                    Text(
                      'Anxious',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate4.png'),
                    ),
                    Text(
                      'Sleep',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.meditatebg),
                      child: Image.asset('assets/Meditate/meditate5.png'),
                    ),
                    Text(
                      'Kids',
                      style: GoogleFonts.montserrat(),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.meditateadbg,
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/Meditate/meditatead.png',
                  ),
                  Positioned(
                    top: 30,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Daily Thought',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          'MEDITATION  3-10 MIN',
                          style: GoogleFonts.montserrat(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 30,
                      right: 30,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.play_arrow_rounded,
                              size: 30,
                            )),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
