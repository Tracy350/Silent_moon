import 'package:flutter/material.dart';
import 'package:silent_moon/colors.dart';

class DarkProfile extends StatelessWidget {
  const DarkProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkbg,
    );
  }
}