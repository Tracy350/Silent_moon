import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/widget/dark_profile_widget.dart';

class DarkProfile extends StatelessWidget {
  DarkProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
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
                  const SizedBox(height: 20),
                  Text('Daniel Doe',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w800,
                          fontSize: 30,
                          color: Colors.white)),
                  Text('danieldoE@gmail.com',
                      style: GoogleFonts.montserrat(color: AppColors.subtext)),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      child: const DarkProfileWidget(
                        icon: Icons.person,
                        text: 'My Account',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: const DarkProfileWidget(
                      icon: Icons.notifications,
                      text: 'Notification',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: const DarkProfileWidget(
                      icon: Icons.settings,
                      text: 'Settings',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: const DarkProfileWidget(
                      icon: Icons.help,
                      text: 'Help Center',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: const DarkProfileWidget(
                      icon: Icons.logout,
                      text: 'Log out',
                    ),
                  ),
                ],
              ),
            ),
          ])),
    );
  }
}
