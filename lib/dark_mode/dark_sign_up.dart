import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/homepage.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/mytextfield.dart';
import 'package:silent_moon/signin.dart';

class DarkSignUp extends StatelessWidget {
  final TextEditingController _emailaddress = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();

  DarkSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkbg,
        title: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      backgroundColor: AppColors.darkbg,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Welcome Back',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 38,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: MyButton(
                color: AppColors.facebookbtn,
                imagePath: 'assets/Vector.png',
                text: 'CONTINUE WITH FACEBOOK',
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
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: MyButton(
                color: Colors.white,
                imagePath: 'assets/google.png',
                text: 'CONTINUE WITH GOOGLE',
                textStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: AppColors.subtext,
                    fontSize: 15,
                  ),
                ),
                width: double.infinity,
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignIn()));
                },
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'OR LOG IN WITH EMAIL',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    color: AppColors.subtext,
                    fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: MyTextfield(
                controller: _name,
                containerDecoration: BoxDecoration(
                  color: AppColors.textfieldcolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                textFieldDecoration: InputDecoration(
                  suffixIcon: const Icon(Icons.check, color: Colors.green),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10),
                  border: InputBorder.none,
                  hintText: 'Name',
                  hintStyle: GoogleFonts.montserrat(
                      textStyle:
                          const TextStyle(color: AppColors.textfieldtxt)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10),
                  border: InputBorder.none,
                  hintText: 'Email address',
                  hintStyle: GoogleFonts.montserrat(
                      textStyle:
                          const TextStyle(color: AppColors.textfieldtxt)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: MyTextfield(
                obscureText: true,
                controller: _password,
                containerDecoration: BoxDecoration(
                  color: AppColors.textfieldcolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                textFieldDecoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10),
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 95, 105, 150))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.sta,
                children: [
                  Text(
                    'I have read the',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: AppColors.subtext, fontSize: 15)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text('Privacy Policy',
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: AppColors.buttoncolor, fontSize: 15))),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: MyButton(
                  color: AppColors.buttoncolor,
                  text: 'GET STARTED',
                  textStyle: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  width: 100,
                  height: 50,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
