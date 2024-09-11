import 'package:flexible_animated_container/flexible_animated_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/welcome_dark.dart';
import 'package:silent_moon/welcome_screen.dart';

class DarkSplashscreen extends StatefulWidget {
  const DarkSplashscreen({super.key});

  @override
  State<DarkSplashscreen> createState() => _DarkSplashscreenState();
}

class _DarkSplashscreenState extends State<DarkSplashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WelcomeDark()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      body: Center(
        child: FlexibleAnimatedContainer(
            animationDuration: Duration(seconds: 2),
            pictureDescribeText: Text(
              'cornerstone',
              style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: AppColors.buttoncolor),
            ),
            imageProvider: AssetImage('assets/logo.png'),
            isExpanded: true,
            onTap: () {}),
      ),
    );
  }
}
