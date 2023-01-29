import 'package:flutter/material.dart';
import 'package:signup/src/widgets/text_field_widget.dart';
import 'package:signup/src/widgets/text_widget.dart';

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(245, 248, 231, 216),
        ),
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: screenSize.width,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyText(
                      data: "Sign in",
                      fontSize: 18,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  MyText(
                    data: "Log in",
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: screenSize.width * 0.9,
                    child: MyTextFieldWidget(
                      labelText: "You Email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: screenSize.width * 0.9,
                    child: MyTextFieldWidget(
                      labelText: "Password",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
