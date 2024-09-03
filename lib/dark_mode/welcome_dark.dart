import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/sleep_dark.dart';
import 'package:silent_moon/mybutton.dart';

class WelcomeDark extends StatelessWidget {
  const WelcomeDark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context)
                  .size
                  .height, // Define the size of the container
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    width: 500,
                    'assets/welcome_dark_img/welcomedark.svg',
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 100,
                      left: 70,
                      child: Text(
                        'Welcome to sleepp',
                        style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                  Positioned(
                      top: 150,
                      left: 50,
                      child: Text(
                        textAlign: TextAlign.center,
                        'Explore the new king of sleep. It uses sound \n and vesualization to create perfect conditions \n for refreshing sleep.',
                        style: GoogleFonts.montserrat(
                            fontSize: 15, color: Colors.white),
                      )),
                  Positioned(
                      bottom: 0,
                      child: MyButton(
                          color: AppColors.buttoncolor,
                          text: 'GET STARTED',
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          onPressed: () {
                                              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SleepDark()));

                          })),
                ],
              )),
        ],
      ),
    );
  }
}
