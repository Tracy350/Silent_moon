import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final BoxDecoration? containerDecoration;
  final InputDecoration? textFieldDecoration;
  final TextEditingController? controller;
  final bool obscureText;

  const MyTextfield({
    super.key,
    this.obscureText = false,
    this.containerDecoration,
    this.textFieldDecoration,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: containerDecoration,
      child: TextFormField(
        controller: controller,
        decoration: textFieldDecoration,
      ),
    );
  }
}
