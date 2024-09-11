import 'package:flutter/material.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/dark_music.dart';
import 'package:silent_moon/dark_mode/dark_profile.dart';
import 'package:silent_moon/dark_mode/home_dark.dart';
import 'package:silent_moon/dark_mode/meditate_dark.dart';
import 'package:silent_moon/dark_mode/sleep_dark.dart';

class NavBarDark extends StatefulWidget {
  const NavBarDark({super.key});

  @override
  State<NavBarDark> createState() => _NavBarState();
}

class _NavBarState extends State<NavBarDark> {
  int myIndex = 0;
  List<Widget> widgetList = [
    const HomeDark(),
    const SleepDark(),
    const MeditateDark(),
    const DarkMusic(),
    DarkProfile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.darkbg,
        selectedItemColor: AppColors.buttoncolor,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.nightlight,
                color: Colors.grey,
              ),
              label: 'Sleep'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.sunny,
                color: Colors.grey,
              ),
              label: 'Meditate'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
                color: Colors.grey,
              ),
              label: 'Music'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.grey,
              ),
              label: 'Afsar')
        ],
      ),
      body: Center(
        child: widgetList[myIndex],
      ),
    );
  }
}
