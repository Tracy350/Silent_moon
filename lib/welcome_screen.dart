import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/signin.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/Frame.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                  top: 50, left: 135, child: Image.asset('assets/title.png')),
              Positioned(
                  top: 50,
                  bottom: 100,
                  right: 30,
                  left: 30,
                  child: Image.asset(
                    'assets/Group.png',
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('We are what we do',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w800))),
              Text(
                textAlign: TextAlign.center,
                'Thousand of people are usign silent moon \n for smalls meditation ',
                style: GoogleFonts.montserrat(
                  textStyle:
                      const TextStyle(color: AppColors.subtext, fontSize: 18),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MyButton(
                    color: AppColors.buttoncolor,
                    text: 'SIGN UP',
                    textStyle: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: AppColors.buttontxt,
                        fontSize: 15,
                      ),
                    ),
                    width: 100,
                    height: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ALREADY HAVE AN ACCOUNT',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.subtext, fontSize: 15)),
                  ),
                  TextButton(
                    child: Text('LOGIN',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: AppColors.buttoncolor, fontSize: 15))),
                    onPressed: () {},
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
