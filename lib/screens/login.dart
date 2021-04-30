import 'package:flutter/material.dart';
import 'package:uscb/screens/signup.dart';
import 'pallete.dart';
class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: plte.backgroundColor,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 300,
                child: Container(
                  padding: EdgeInsets.only(top: 90, left: 20),
                  color: Color(0xFF3b5999).withOpacity(.30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: "Welcome back to",
                            style: TextStyle(
                                fontSize: 18,
                                color: plte.textColor,
                                letterSpacing: 1),
                            children: [
                              TextSpan(
                                  text: " US & CB ",
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: plte.activateColor,
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "LogIn to continue",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 200,
              child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: plte.backgroundColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 15,
                            spreadRadius: 5)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle_outlined,
                              color: plte.iconColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(30.0)),
                            ),
                            contentPadding: EdgeInsets.all(8.0),
                            hintText: "Enter your Email",
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextField(
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.adjust_rounded,
                              color: plte.iconColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(30.0)),
                            ),
                            contentPadding: EdgeInsets.all(8.0),
                            hintText: "Enter Password",
                          ),
                        ),
              SizedBox(height: 10,)
              ,
                        MaterialButton(
                            minWidth: 100,
                            splashColor: plte.textColor,
                            shape: StadiumBorder(),
                            child: Text("Sign up",style: TextStyle(color: plte.textColor,fontSize: 16,fontWeight: FontWeight.bold),),
                            color: plte.btnColor,

                            onPressed: (){})
                      ],
                    ),
                  )
              )
          ),
          Positioned(
            top: 410,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                ),

                TextButton(

                  child: Text("Sign In"),
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return signupScreen();
                      }));
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
