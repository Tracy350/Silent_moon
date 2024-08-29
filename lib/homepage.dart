import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/choose_topic.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/signin.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.buttoncolor,
      body: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: MyButton(
                color: Colors.white,
                text: 'GET STARTED',
                textStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: AppColors.subtext,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                width: 100,
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChooseTopic()));
                }),
          ),
        ],
      ),
    );
  }
}
