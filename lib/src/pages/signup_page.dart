import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signup/src/widgets/elevated_button.dart';
import 'package:signup/src/widgets/text_button.dart';
import 'package:signup/src/widgets/text_field_widget.dart';
import 'package:signup/src/widgets/text_widget.dart';

import '../widgets/my_text_button_icon.dart';

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
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyTextButton(
                    onPressed: (() {}),
                    child: MyText(
                      data: "Log in",
                      fontSize: 20,
                      color: Colors.black45,
                    ),
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
                  height: 35,
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
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: SizedBox(
                    width: screenSize.width * 0.9,
                    height: 50,
                    child: Myelevatedbutton(
                      onPressed: (() {}),
                      textData: MyText(data: "Sign up"),
                      buttonColor: Colors.black,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: MyText(data: "Or sign up with social account"),
                ),
                SizedBox(
                  width: screenSize.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: MyTextButtonicon(
                          label: MyText(
                            data: "Facebook",
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.facebook,
                            color: Colors.black,
                          ),
                          shape: const StadiumBorder(),
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 170,
                        child: MyTextButtonicon(
                          label: MyText(
                            data: "Twitter",
                            color: Colors.black,
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.black,
                          ),
                          shape: const StadiumBorder(),
                          side: const BorderSide(
                            width: 1.5,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
