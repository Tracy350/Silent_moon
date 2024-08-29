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

  const MyButton({
    super.key,
    this.textStyle,
    this.imagePath,
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
            if (imagePath != null)
              Image.asset(
                imagePath!,
                height: 20,
              ),
            if (imagePath != null)
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
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
