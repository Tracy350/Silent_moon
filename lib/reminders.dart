import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/ampm.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/home.dart';
import 'package:silent_moon/hours.dart';
import 'package:silent_moon/minutes.dart';
import 'package:silent_moon/mybutton.dart';
import 'package:silent_moon/navigation_menu.dart';
import 'package:silent_moon/tile.dart';

class Reminders extends StatefulWidget {
  const Reminders({super.key});

  @override
  State<Reminders> createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  List<Color> _containerColors = List<Color>.filled(7, Colors.white);
  List<Color> _textColors = List<Color>.filled(7, AppColors.subtext);

  void _toggleColor(int index) {
    setState(() {
      _containerColors[index] = _containerColors[index] == Colors.white
          ? AppColors.datebg
          : Colors.white;
      _textColors[index] = _textColors[index] == AppColors.subtext
          ? Colors.white
          : AppColors.subtext;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 130.0),
              child: Text(
                'What time would you \n like to medistate',
                style: GoogleFonts.montserrat(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ),
            ),
            Text(
              'Any time you can choose but We recommend  first thing in th morning.',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: AppColors.subtext, fontSize: 18),
              ),
            ),
            SizedBox(height: 20),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.timerbg),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 2,
                          physics: FixedExtentScrollPhysics(),
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 24,
                            builder: (context, index) {
                              return MyHours(
                                hrs: index,
                              );
                            },
                          )),
                    ),
                    Container(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 2,
                          physics: FixedExtentScrollPhysics(),
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 60,
                            builder: (context, index) {
                              return MyMinutes(
                                mins: index,
                              );
                            },
                          )),
                    ),
                    Container(
                      width: 70,
                      child: ListWheelScrollView.useDelegate(
                          itemExtent: 50,
                          perspective: 0.01,
                          diameterRatio: 2,
                          physics: FixedExtentScrollPhysics(),
                          childDelegate: ListWheelChildBuilderDelegate(
                            childCount: 2,
                            builder: (context, index) {
                              if (index == 0) {
                                return Ampm(
                                  isitam: true,
                                );
                              } else {
                                return Ampm(
                                  isitam: false,
                                );
                              }
                            },
                          )),
                    ),
                  ],
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'What day would you \n like to meditate',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Everyday is best, but we recommend \n picking  at least five.',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: AppColors.subtext, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(7, (index) {
                  return GestureDetector(
                    onTap: () => _toggleColor(index),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black),
                          color: _containerColors[index]),
                      child: Center(
                        child: Text(
                          _getDayLabel(index),
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: _textColors[index],
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                  );
                })),
            SizedBox(
              height: 30,
            ),
            MyButton(
                color: AppColors.buttoncolor,
                text: 'SAVE',
                width: MediaQuery.of(context).size.width * 0.3,
                height: 50,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavBar()));
                }),
            SizedBox(
              height: 20,
            ),
            MyButton(
                color: Colors.white,
                text: 'NO, THANKS',
                textStyle: TextStyle(color: AppColors.subtext),
                width: MediaQuery.of(context).size.width * 0.3,
                height: 50,
                onPressed: () {})
          ])),
    ));
  }

  String _getDayLabel(int index) {
    switch (index) {
      case 0:
        return 'SU';
      case 1:
        return 'MO';
      case 2:
        return 'TU';
      case 3:
        return 'WE';
      case 4:
        return 'TH';
      case 5:
        return 'FR';
      case 6:
        return 'SA';
      default:
        return '';
    }
  }
}
