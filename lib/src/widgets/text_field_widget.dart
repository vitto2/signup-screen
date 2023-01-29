import 'package:flutter/material.dart';

class MyTextFieldWidget extends StatelessWidget {
  MyTextFieldWidget({super.key, this.labelText, this.suffixIcon});

  String? labelText;
  Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: suffixIcon,
          suffixStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
