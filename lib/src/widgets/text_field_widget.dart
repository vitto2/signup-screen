import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatelessWidget {
  MyTextFieldWidget({super.key, this.labelText});

  String? labelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
        ),
      ),
    );
  }
}
