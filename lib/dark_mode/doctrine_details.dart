import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';

class DoctrineDetails extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();
  final String doctrineText =
      'That the Holy Bible, consisting of 39 books of the Old Testament and 27 books of the New Testament, is the inspired Word of God. We take the Bible as final authority in all matters concerning Christian conduct and work.That the Holy Bible, consisting of 39 books of the Old Testament and 27 books of the New Testament, is the inspired Word of God. We take the Bible as final authority in all matters concerning Christian conduct and work.That the Holy Bible, consisting of 39 books of the Old Testament and 27 books of the New Testament, is the inspired Word of God. We take the Bible as final authority in all matters concerning Christian conduct and work.That the Holy Bible, consisting of 39 books of the Old Testament and 27 books of the New Testament, is the inspired Word of God. We take the Bible as final authority in all matters concerning Christian conduct and work.';

  speak(String text) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }

  DoctrineDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.iconbg),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('The Holy Bible',
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Colors.white)),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.buttoncolor),
                    child: IconButton(
                        onPressed: () async {
                          await speak(doctrineText);
                        },
                        icon: const Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                doctrineText,
                style:
                    GoogleFonts.montserrat(color: Colors.white, fontSize: 20),
              ),
              Text(
                '(2 Timothy 3:16,17; Proverbs 30:5,6; Revelation 22:18,19.)',
                style: GoogleFonts.montserrat(
                    fontStyle: FontStyle.italic, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
