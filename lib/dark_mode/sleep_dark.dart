import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/night_island.dart';
import 'package:silent_moon/mybutton.dart';

class SleepDark extends StatefulWidget {
  const SleepDark({super.key});

  @override
  State<SleepDark> createState() => _SleepDarkState();
}

class _SleepDarkState extends State<SleepDark> {
  void _navigation() {
    setState(() {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NightIsland()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background images
            Image.asset(
              'assets/sleep_dark_assets/sleep_clouds.png',
              width: MediaQuery.of(context).size.width,
            ),
            Positioned(
              child: Image.asset('assets/sleep_dark_assets/sleep_moon.png'),
            ),
            // Main content
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100), // Spacing from top
                Padding(
                  padding: const EdgeInsets.only(left: 120.0),
                  child: Text(
                    'Sleep Stories',
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20), // Space between title and description
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Text(
                    'Explore the new king of sleep. It uses sound \n and visualization to create perfect conditions \n for refreshing sleep.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 30), // Space before the row of icons
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildCategoryColumn(
                          'All', 'assets/Meditate/meditate1.png'),
                      buildCategoryColumn(
                          'My', 'assets/Meditate/meditate2.png'),
                      buildCategoryColumn(
                          'Anxious', 'assets/Meditate/meditate3.png'),
                      buildCategoryColumn(
                          'Sleep', 'assets/Meditate/meditate4.png'),
                      buildCategoryColumn(
                          'Kids', 'assets/Meditate/meditate5.png'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/sleep_dark_assets/oceanmoon.png',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                            )),
                        Positioned(
                          top: 70,
                          left: 50,
                          child: Text(
                            'The Ocean Moon',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w600,
                                color: Colors.yellowAccent,
                                fontSize: 30),
                          ),
                        ),
                        Positioned(
                            top: 120,
                            left: 70,
                            child: Text(
                              textAlign: TextAlign.center,
                              'Non-stop 8- hour mixes of our \n most popular sleep audio',
                              style: GoogleFonts.montserrat(
                                color: Colors.yellowAccent,
                              ),
                            )),
                        Positioned(
                          bottom: 20,
                          left: 150,
                          child: Container(
                            width: 70,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Text(
                                  'START',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _navigation,
                            child: Container(
                              height: 150,
                              width: 170,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.asset(
                                'assets/sleep_dark_assets/night_island.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            'Night Island',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '45 MIN SLEEP MUSIC',
                            style: GoogleFonts.montserrat(
                                color: AppColors.subtext,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              'assets/sleep_dark_assets/night_island.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Sweet Sleep',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '45 MIN SLEEP MUSIC',
                            style: GoogleFonts.montserrat(
                                color: AppColors.subtext,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              'assets/sleep_dark_assets/night_island.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Night Island',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '45 MIN SLEEP MUSIC',
                            style: GoogleFonts.montserrat(
                                color: AppColors.subtext,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            width: 170,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: Image.asset(
                              'assets/sleep_dark_assets/night_island.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Sweet Sleep',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            '45 MIN SLEEP MUSIC',
                            style: GoogleFonts.montserrat(
                                color: AppColors.subtext,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method for building a column for each category
  Column buildCategoryColumn(String label, String imagePath) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.meditatebg,
          ),
          child: Image.asset(imagePath),
        ),
        SizedBox(height: 8), // Space between image and text
        Text(
          label,
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
      ],
    );
  }
}
