import 'package:flutter/material.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import '../screens/pallete.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        color: plte.backgroundColor,
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: plte.backgroundColor,
          body: SafeArea(
            child: Material(
              color: plte.backgroundColor,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    MaterialButton(
                    elevation: 5,
                    highlightElevation: 0,
                    minWidth: 200,
                    splashColor: plte.btnColor,
                    shape: StadiumBorder(),
                    child: Text("LogIn as a User", style: TextStyle(
                        color: plte.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),),
                    color: plte.btnColor,

                    onPressed: () {
                      {
                        Navigator.pushNamed(context, MyRoutes.LoginRoute);
                      }
                    }),
                  SizedBox(height: 20,),
              MaterialButton(
                  elevation: 5,
                  minWidth: 200,
                  splashColor: plte.textColor,
                  shape: StadiumBorder(),
                  child: Text("LogIn as an Employee", style: TextStyle(
                      color: plte.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),),
                  color: plte.btnColor,

                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.loginEmp);
                  }
                    )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
