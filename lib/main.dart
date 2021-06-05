import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import 'package:uscb/screens/c_main.dart';
import 'package:uscb/screens/complaint.dart';
import 'package:uscb/screens/login.dart';
import 'package:uscb/screens/mainscreen.dart';
import 'package:uscb/screens/signup.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Signup UI",
      routes: {
        MyRoutes.LoginRoute: (context)=>loginScreen(),
        MyRoutes.signUp: (context)=>signupScreen(),
        MyRoutes.MainScreen: (context)=>mainScreen(),
        MyRoutes.ComplainButtonsChoice:(context)=>c_main(),
        MyRoutes.cForm:(context)=>complaintScreen(),
      });
  }
}
