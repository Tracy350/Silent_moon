import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/navigation_dark.dart';
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
                  Positioned.fill(
                    top: 100,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'CCCG Meditation',
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                            height: 10), // Spacing between title and subtitle
                        Text(
                          textAlign: TextAlign.center,
                          'Philippians 4:8 ...if anything is excellent or \npraiseworthy think about such things.',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: MyButton(
                            color: AppColors.buttoncolor,
                            text: 'GET STARTED',
                            textStyle: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NavBarDark()));
                            }),
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
