import 'package:flutter/material.dart';

class Myelevatedbutton extends StatelessWidget {
  Myelevatedbutton({
    super.key,
    required this.onPressed,
    required this.textData,
    this.buttonColor,
    this.shape,
    this.shadowColor,
  });

  Widget? textData;
  void Function()? onPressed;
  Color? buttonColor;
  OutlinedBorder? shape;
  Color? shadowColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: shape,
        shadowColor: shadowColor,
      ),
      child: textData,
    );
  }
}
