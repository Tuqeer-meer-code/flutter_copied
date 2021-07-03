import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import 'package:uscb/screens/addConsumer.dart';
import 'package:uscb/screens/c_main.dart';
import 'package:uscb/screens/complaint.dart';
import 'package:uscb/Logins/login.dart';
import 'package:uscb/Logins/mainLoginClassForEmpUser.dart';
import 'package:uscb/screens/mainscreen.dart';
import 'package:uscb/Logins/signup.dart';
import 'Employee/employee_mainScreen.dart';
import 'Logins/EmpLogin.dart';
import 'Logins/SignUpLoginButton.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Signup UI",
      routes: {
        MyRoutes.signUpLoginButton:(context)=>signUpLoginButtons(),
        MyRoutes.LoginEmpUser:(context)=>Login(),
        MyRoutes.LoginRoute: (context)=>loginScreen(),
        MyRoutes.signUp: (context)=>signupScreen(),
        MyRoutes.MainScreen: (context)=>mainScreen(),
        MyRoutes.ComplainButtonsChoice:(context)=>c_main(),
        MyRoutes.cForm:(context)=>complaintScreen(),
        MyRoutes.loginEmp:(context)=>employeeLogin(),
        MyRoutes.LoginMain:(context)=>Login(),
        MyRoutes.EmpMainScreen:(context)=>EmpmainScreen(),
        MyRoutes.add:(context)=>consumerDetail(),
      });
  }
}
