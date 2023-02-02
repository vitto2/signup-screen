import 'package:flutter/material.dart';

class Myelevatedbutton extends StatelessWidget {
  Myelevatedbutton({
    super.key,
    required this.onPressed,
    required this.textData,
    this.buttonColor,
    this.shape,
  });

  Widget? textData;
  void Function()? onPressed;
  Color? buttonColor;
  OutlinedBorder? shape;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: shape,
      ),
      child: textData,
    );
  }
}
