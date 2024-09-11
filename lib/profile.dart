import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/mytextfield.dart';

class Profile extends StatelessWidget {
  final TextEditingController _emailaddress = TextEditingController();
  final TextEditingController _fname = TextEditingController();
  final TextEditingController _lname = TextEditingController();

  final TextEditingController _phonenumber = TextEditingController();

  Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 20),
              child: Icon(
                Icons.logout,
                color: Colors.red,
                size: 35,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColors.buttoncolor,
                        radius: 90,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                                color: AppColors.buttoncolor,
                                shape: BoxShape.circle),
                            child: const Icon(Icons.edit,
                                color: Colors.white, size: 20),
                          ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('Daniel Doe',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w800, fontSize: 30)),
                  Text('danieldoE@gmail.com',
                      style: GoogleFonts.montserrat(color: AppColors.subtext)),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: MyTextfield(
                      controller: _emailaddress,
                      containerDecoration: BoxDecoration(
                        color: AppColors.textfieldcolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textFieldDecoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15.0),
                        border: InputBorder.none,
                        hintText: 'Email Addrress',
                        hintStyle: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: AppColors.textfieldtxt),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: MyTextfield(
                      controller: _fname,
                      containerDecoration: BoxDecoration(
                        color: AppColors.textfieldcolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textFieldDecoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15.0),
                        border: InputBorder.none,
                        hintText: 'First Name',
                        hintStyle: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: AppColors.textfieldtxt),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: MyTextfield(
                      controller: _lname,
                      containerDecoration: BoxDecoration(
                        color: AppColors.textfieldcolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textFieldDecoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15.0),
                        border: InputBorder.none,
                        hintText: 'Last Name',
                        hintStyle: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: AppColors.textfieldtxt),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: MyTextfield(
                      controller: _phonenumber,
                      containerDecoration: BoxDecoration(
                        color: AppColors.textfieldcolor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      textFieldDecoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15.0),
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: GoogleFonts.montserrat(
                          textStyle:
                              const TextStyle(color: AppColors.textfieldtxt),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 190,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: MyButton(
                        color: AppColors.buttoncolor,
                        text: 'Update',
                        textStyle: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20),
                        width: 200,
                        height: 70,
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          ])),
    );
  }
}
