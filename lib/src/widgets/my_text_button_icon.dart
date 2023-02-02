import 'package:flutter/material.dart';

class MyTextButtonicon extends StatelessWidget {
  MyTextButtonicon({
    required this.onPressed,
    required this.icon,
    required this.label,
    this.backgroundColor,
    this.shape,
    this.side,
    super.key,
  });

  void Function()? onPressed;
  Widget icon;
  Widget label;
  Color? backgroundColor;
  OutlinedBorder? shape;
  BorderSide? side;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: label,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: shape,
        side: side,
      ),
    );
  }
}
