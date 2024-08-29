import 'package:flutter/material.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/home.dart';
import 'package:silent_moon/meditate.dart';
import 'package:silent_moon/music.dart';
import 'package:silent_moon/profile.dart';
import 'package:silent_moon/sleep.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myIndex = 0;
  List<Widget> widgetList = [
    const Home(),
    const Sleep(),
    const Meditate(),
    const Music(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
       
        selectedItemColor: AppColors.buttoncolor,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
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
