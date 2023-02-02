import 'package:flutter/material.dart';
import 'package:signup/src/widgets/elevated_button.dart';
import 'package:signup/src/widgets/my_text_button_icon.dart';
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
                        child: const Text("Forgot"),
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
                    width: 150,
                    child: MyTextButtonicon(
                      label: MyText(data: "Facebook"),
                      onPressed: () {},
                      icon: const Icon(Icons.facebook),
                      shape: const StadiumBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 150,
                    child: MyTextButtonicon(
                      label: MyText(data: "Twitter"),
                      onPressed: () {},
                      icon: const Icon(Icons.tab),
                      shape: const StadiumBorder(),
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
