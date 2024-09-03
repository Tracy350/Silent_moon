import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';

class DarkMusic extends StatelessWidget {
  const DarkMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context)
                .size
                .height, // Define the size of the container
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                    bottom: -50,
                    child: Transform.rotate(
                        angle: -56.5,
                        child: Image.asset(
                          'assets/dark_audio_assets/dark_bottomleft.png',
                        ))),
                Positioned(
                    bottom: -50,
                    right: 0,
                    child: Transform.rotate(
                        angle: -56.5,
                        child: Image.asset(
                          'assets/dark_audio_assets/dark_bottomright.png',
                        ))),
                Positioned(
                    right: 0,
                    child: Transform.rotate(
                        angle: -56.5,
                        child: Image.asset(
                          'assets/dark_audio_assets/dark_topright.png',
                        ))),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 50, right: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.iconbg),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.iconbg),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.download,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Focus Attention',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w800,
                              fontSize: 30,
                              color: Colors.white)),
                      Text(
                        '7 DAYS OF CALM',
                        style: GoogleFonts.montserrat(color: AppColors.subtext),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Positioned(
                  top: 550,
                  left: 140,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fast_rewind,
                            color: Colors.white,
                          )),
                      Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70),
                              color: Colors.white),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.pause,
                                color: AppColors.fontcolor,
                              ))),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.fast_forward,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                const Align(
                  alignment: Alignment(0, 0.5),
                  child: Divider(
                    color: Colors.white, // Set the color of the line
                    thickness: 2, // Set the thickness of the line
                    indent:
                        30, // Optional: Add indentation to the start of the line
                    endIndent:
                        30, // Optional: Add indentation to the end of the line
                  ),
                ),
                Align(
                  alignment: const Alignment(0, 0.6),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Row(
                      children: [
                        Text(
                          '01:30',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                        const Spacer(),
                        Text(
                          '30:30',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
