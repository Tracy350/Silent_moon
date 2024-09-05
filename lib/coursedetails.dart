import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/tabcontent.dart';

class Coursedetails extends StatelessWidget {
   Coursedetails({super.key});
    final FlutterTts flutterTts = FlutterTts();

  speak(String text) async {
    await flutterTts.setLanguage('en-UK');
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      color: AppColors.nightlifebg,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight:  Radius.circular(20))),
                  child: Image.asset(
                    'assets/sleep_dark_assets/night_island_bg.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 50, right: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                            Navigator.pop(context);
                        },
                        child: Container(
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
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Happy Morning',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                '45 MIN SLEEP MUSIC',
                style: GoogleFonts.montserrat(
                    color: AppColors.subtext, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                'Ease the mind into a restful night’s sleep  with \n these deep, amblent tones.',
                style: GoogleFonts.montserrat(
                    color: AppColors.subtext, fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('24,564 favorites',
                      style: GoogleFonts.montserrat(
                          color: AppColors.subtext, fontSize: 15)),
                  const Spacer(),
                  const Icon(
                    Icons.headphones,
                    color: Colors.blueAccent,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('24,564 favorites',
                      style: GoogleFonts.montserrat(
                          color: AppColors.subtext, fontSize: 15)),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Pick a Narrator',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 30),
              ),
            ),
             DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  const TabBar(
                    tabs: [
                      Tab(
                        text: 'MALE VOICE',
                      ),
                      Tab(
                        text: 'FEMALE VOICE',
                      )
                    ],
                    indicatorColor: AppColors.buttoncolor,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                  ),
                  SizedBox(
                    height: 250,
                    child: TabBarView(children: [Tabcontent(), Tabcontent()]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
