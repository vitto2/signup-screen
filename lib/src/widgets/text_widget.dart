import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText(
      {super.key,
      required this.data,
      this.textAlign,
      this.fontSize,
      this.color,
      this.fontWeight});

  String data;
  TextAlign? textAlign;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
