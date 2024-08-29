import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/mytextfield.dart';
import 'package:silent_moon/signup.dart';
import 'package:silent_moon/welcome_screen.dart';

class SignIn extends StatelessWidget {
  final TextEditingController _emailaddress = TextEditingController();
  final TextEditingController _password = TextEditingController();

  SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/signupbg.png'),
              Positioned(
                bottom: 230,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => WelcomeScreen()));
                        }),
                  ),
                ),
              ),
              SizedBox(),
              Positioned(
                  top: 150,
                  right: 40,
                  child: Text(
                    'Welcome Back',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 38)),
                  )),
              Positioned(
                top: 270,
                left: 20,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: MyButton(
                      color: AppColors.facebookbtn,
                      imagePath: 'assets/Vector.png',
                      text: 'CONTINUE WITH FACEBOOK',
                      textStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.buttontxt, fontSize: 15),
                      ),
                      width: 100,
                      height: 50,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      }),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: MyButton(
                color: Colors.white,
                imagePath: 'assets/google.png',
                text: 'CONTINUE WITH GOOGLE',
                textStyle: GoogleFonts.montserrat(
                  textStyle:
                      const TextStyle(color: AppColors.subtext, fontSize: 15),
                ),
                width: 100,
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'OR LOG IN WITH EMAIL',
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.subtext,
                    fontSize: 18)),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: MyTextfield(
              controller: _emailaddress,
              containerDecoration: BoxDecoration(
                color: AppColors.textfieldcolor,
                borderRadius: BorderRadius.circular(10),
              ),
              textFieldDecoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                border: InputBorder.none,
                hintText: 'Email address',
                hintStyle: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: AppColors.textfieldtxt)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: MyTextfield(
              controller: _password,
              containerDecoration: BoxDecoration(
                color: AppColors.textfieldcolor,
                borderRadius: BorderRadius.circular(10),
              ),
              textFieldDecoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: AppColors.textfieldtxt)),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: MyButton(
                color: AppColors.buttoncolor,
                text: 'LOG IN',
                textStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                width: 100,
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                }),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Forgot password?',
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.w600)),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ALREADY HAVE AN ACCOUNT?',
                style: GoogleFonts.montserrat(
                    textStyle:
                        TextStyle(color: AppColors.subtext, fontSize: 15)),
              ),
              TextButton(
                child: Text('SIGN UP',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: AppColors.buttoncolor, fontSize: 15))),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
