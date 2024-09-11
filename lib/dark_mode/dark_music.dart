import 'package:flutter/material.dart';
import 'package:silent_moon/colors.dart';
import 'package:silent_moon/dark_mode/dark_player.dart';
import 'package:silent_moon/widget/music_widget.dart';

class DarkMusic extends StatelessWidget {
  const DarkMusic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkbg,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 15, right: 15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DarkPlayer()));
                },
                child: MusicWidget(
                    musicimagePath: 'assets/audio_cover/cover_art1.png',
                    musictitle: 'Remedy',
                    musicartist: 'Shatta Wale'),
              ),
              SizedBox(
                height: 20,
              ),
              MusicWidget(
                  musicimagePath: 'assets/audio_cover/cover_art1.png',
                  musictitle: 'Remedy',
                  musicartist: 'Shatta Wale'),
              SizedBox(
                height: 20,
              ),
              MusicWidget(
                  musicimagePath: 'assets/audio_cover/cover_art1.png',
                  musictitle: 'Remedy',
                  musicartist: 'Shatta Wale'),
              SizedBox(
                height: 20,
              ),
              MusicWidget(
                  musicimagePath: 'assets/audio_cover/cover_art1.png',
                  musictitle: 'Remedy',
                  musicartist: 'Shatta Wale'),
              SizedBox(
                height: 20,
              ),
              MusicWidget(
                  musicimagePath: 'assets/audio_cover/cover_art1.png',
                  musictitle: 'Remedy',
                  musicartist: 'Shatta Wale'),
              SizedBox(
                height: 20,
              ),
              MusicWidget(
                  musicimagePath: 'assets/audio_cover/cover_art1.png',
                  musictitle: 'Remedy',
                  musicartist: 'Shatta Wale'),
              SizedBox(
                height: 20,
              ),
              MusicWidget(
                  musicimagePath: 'assets/audio_cover/cover_art1.png',
                  musictitle: 'Remedy',
                  musicartist: 'Shatta Wale'),
              SizedBox(
                height: 20,
              ),
              MusicWidget(
                  musicimagePath: 'assets/audio_cover/cover_art1.png',
                  musictitle: 'Remedy',
                  musicartist: 'Shatta Wale'),
            ],
          ),
        ),
      ),
    );
  }
}
