import 'package:flutter/material.dart';

class YoutubeIcons extends StatelessWidget {
  final IconData icon;
  final String text;
  YoutubeIcons({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.grey,
          size: 30,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
