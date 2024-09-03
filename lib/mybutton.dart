import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silent_moon/colors.dart';

class MyButton extends StatelessWidget {
  final String text;
  final String? imagePath;
  final double width;
  final double height;
  final Color color;
  final void Function()? onPressed;
  final TextStyle? textStyle;
  final IconData? icon;

  const MyButton({
    super.key,
    this.textStyle,
    this.imagePath,
    this.icon,
    required this.color,
    required this.text,
    required this.width,
    required this.height,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: width,
      height: height,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon),
            if (imagePath != null && icon == null)
              Image.asset(
                imagePath!,
                height: 20,
              ),
            const SizedBox(width: 20),
            Text(
              text,
              style: textStyle ??
                  GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: AppColors.buttontxt,
                      fontSize: 15,
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
