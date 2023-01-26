import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:signup/src/pages/login_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login_page(),
    );
  }
}
