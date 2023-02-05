import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  MyTextButton({
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    this.shape,
    this.side,
    super.key,
  });

  void Function()? onPressed;
  Color? backgroundColor;
  OutlinedBorder? shape;
  BorderSide? side;
  Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: shape,
        side: side,
      ),
      child: child,
    );
  }
}
