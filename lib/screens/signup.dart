import 'package:flutter/material.dart';
import 'package:uscb/screens/mainscreen.dart';
import 'login.dart';
import 'pallete.dart';

class signupScreen extends StatefulWidget {
  @override
  _signupScreenState createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  @override
  int group = 1;
  var _formkey=GlobalKey<FormState>();
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
                            text: "Welcome to",
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
                        "SignUp to continue",
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
                  height: 300,
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
                    child: Form(
                      key: _formkey,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextFormField(
                              validator: (String value){
                                if(value.isEmpty){
                                  return "Please Enter Email";
                                }
                              },
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
                              obscuringCharacter: '0',
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
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              obscureText: true,
                              obscuringCharacter: '0',
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
                                hintText: "Confirm Password",
                              ),
                            ),
                            
                            SizedBox(height: 10,),
                            MaterialButton(
                              elevation: 10,
                                minWidth: 100,
                              splashColor: plte.textColor,
                              shape: StadiumBorder(),
                              child: Text("Sign up",style: TextStyle(color: plte.textColor,fontSize: 16,fontWeight: FontWeight.bold),),
                              color: plte.btnColor,

                                onPressed: (){

                                setState(() {
                                  if(_formkey.currentState.validate()) {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return mainScreen();
                                        }));
                                  }
                                });
                                })
                          ],
                        ),
                      ),
                    ),
                  )
              )
          ),
          Positioned(
              top: 500,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text("Already have an account?",style: TextStyle(color: Colors.white),),
                  ),

                   TextButton(

                  child: Text("Log In"),
                    onPressed: (){
                    setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return loginScreen();
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
