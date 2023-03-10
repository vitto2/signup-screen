import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signup/src/widgets/elevated_button.dart';
import 'package:signup/src/widgets/my_text_button_icon.dart';
import 'package:signup/src/widgets/text_field_widget.dart';
import 'package:signup/src/widgets/text_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                      fontSize: 17,
                      color: Colors.black45,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
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
                      labelText: "Your Email",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: screenSize.width * 0.9,
                    child: MyTextFieldWidget(
                      labelText: "Password",
                      suffixIcon: TextButton(
                        onPressed: () {},
                        child: MyText(
                          data: "Forgot",
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: screenSize.width * 0.9,
              height: 50,
              child: Myelevatedbutton(
                onPressed: () {},
                textData: MyText(
                  data: "Log in",
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
                buttonColor: Colors.black87,
                shape: const StadiumBorder(),
                shadowColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            MyText(
              data: "Or sign up with social account",
              fontSize: 15,
              color: Colors.black,
            ),
            const SizedBox(
              height: 30,
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
        ),
      ),
    );
  }
}
