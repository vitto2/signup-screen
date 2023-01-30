import 'package:flutter/material.dart';
import 'package:signup/src/widgets/text_widget.dart';

class Myelevatedbutton extends StatelessWidget {
  Myelevatedbutton({
    super.key,
    this.onPressed,
    required this.textData,
  });

  String textData;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: MyText(data: textData),
    );
  }
}
