import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/grid_elements_dark.dart';

class SleepMusic extends StatelessWidget {
  const SleepMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap:  (){
                     Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Sleep Music',
                    style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  Spacer(),
                ],
              ),
            ),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
                GridElements(
                  text: 'Moon Clouds',
                  image: 'assets/sleep_dark_assets/sweet_sleep.png',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
