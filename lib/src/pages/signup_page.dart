import 'package:flutter/material.dart';
import 'package:signup/src/widgets/text_field_widget.dart';
import 'package:signup/src/widgets/text_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(245, 248, 231, 216),
        ),
        height: screenSize.height,
        width: screenSize.height,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyText(
                    data: "Log in",
                    textAlign: TextAlign.end,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black45,
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
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText(
                        data: "Sign up",
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: screenSize.width * 0.9,
                  child: MyTextFieldWidget(
                    labelText: "Your Email",
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.9,
                  child: MyTextFieldWidget(
                    labelText: "Name",
                  ),
                ),
                SizedBox(
                  width: screenSize.width * 0.9,
                  child: MyTextFieldWidget(
                    labelText: "Password",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
