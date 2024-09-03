import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/coursedetails.dart';
import 'package:silent_moon/meditate.dart';
import 'package:silent_moon/music.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/navigation_menu.dart';
import 'package:silent_moon/profile.dart';
import 'package:silent_moon/sleep.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
void _nxtpage(){
  setState(() {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => const Coursedetails()));

  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Center(child: Image.asset('assets/title.png')),
                ),
                Text(
                  'Good Morning, Afsar',
                  style: GoogleFonts.montserrat(
                    textStyle:
                        const TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                ),
                Text(
                  'We wish you have a good day',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 20,
                        color: AppColors.subtext),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.buttoncolor,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Image.asset('assets/home/bascis.png')),
                          Positioned(
                              bottom: 50,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Basics ',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.yellow[100])),
                                  Text(
                                    'Course',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.yellow[100]),
                                  )
                                ],
                              )),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Row(
                              children: [
                                Text(
                                  '3-10 MIN',
                                  style: GoogleFonts.montserrat(
                                      color: AppColors.basicstxt),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
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
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.relaxationbg,
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 0,
                              right: 0,
                              child: Image.asset('assets/home/relaxation.png')),
                          Positioned(
                              bottom: 50,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Basics ',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.fontcolor)),
                                  Text(
                                    'Course',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: AppColors.fontcolor),
                                  )
                                ],
                              )),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Row(
                              children: [
                                Text(
                                  '3-10 MIN',
                                  style: GoogleFonts.montserrat(
                                      color: AppColors.fontcolor),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Container(
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
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.meditationbg,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/home/dailythoughtbg.png',
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
                              style:
                                  GoogleFonts.montserrat(color: Colors.white),
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
                                icon: const Icon(
                                  Icons.play_arrow_rounded,
                                  size: 30,
                                )),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Recommended for you',
                  style: GoogleFonts.montserrat(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: _nxtpage,
                            child: Container(
                                height: 130,
                                width: MediaQuery.of(context).size.width * 0.4,
                                decoration: BoxDecoration(
                                    color: AppColors.recombg1,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 0,
                                      child: Image.asset(
                                          'assets/home/recommended1.png'),
                                    )
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            child: Text(
                              'Focus',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w800, fontSize: 25),
                            ),
                          ),
                          Text('MEDITATION  3-10 MIN',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.subtext,
                                  fontSize: 15))
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 130,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                  color: AppColors.recombg2,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: Image.asset(
                                        'assets/home/recommended2.png'),
                                  )
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            child: Text(
                              'Happy',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w800, fontSize: 25),
                            ),
                          ),
                          Text('MEDITATION  3-10 MIN',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.subtext,
                                  fontSize: 15))
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 130,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                  color: AppColors.recombg1,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: Image.asset(
                                        'assets/home/recommended1.png'),
                                  )
                                ],
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            child: Text(
                              'Focus',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w800, fontSize: 25),
                            ),
                          ),
                          Text('MEDITATION  3-10 MIN',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.subtext,
                                  fontSize: 15))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
       );
  }
}
