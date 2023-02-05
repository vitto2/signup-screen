import 'package:flutter/material.dart';
import 'package:signup/src/pages/login_page.dart';
import 'package:signup/src/pages/signup_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/': (context) => const Login(),
        '/signup': (context) => const Signup(),
      },
    );
  }
}
