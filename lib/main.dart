import 'package:flutter/material.dart';
import 'package:uscb/screens/signup.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Signup UI",
      home: signupScreen(),
    );
  }
}
