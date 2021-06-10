import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import '../screens/pallete.dart';
class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  var _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final emailcon=TextEditingController();
    final password=TextEditingController();

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: plte.btnColor));
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
                  height: 220,
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
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: TextFormField(
                                controller: emailcon,
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return "Required";
                                  }
                                },
                                decoration: InputDecoration(
                                  errorStyle: TextStyle(
                                    letterSpacing: 1,
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
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
                                  labelText: "Email"
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return "Required";
                                }
                              },
                              obscureText: true,
                              obscuringCharacter: '*',
                              decoration: InputDecoration(
                                errorStyle: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
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
                                labelText: "Password",
                              ),
                              controller: password,
                            ),
              SizedBox(height: 20,)
              ,],
                        ),
                      ),
                    ),
                  )
              )
          ),
          Positioned(
            top: 430,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: MaterialButton(
                      elevation: 1,
                      minWidth: 100,
                      splashColor: plte.textColor,
                      shape: StadiumBorder(),
                      child: Text("LogIn",style: TextStyle(color: plte.textColor,fontSize: 16,fontWeight: FontWeight.bold),),
                      color: plte.btnColor,

                      onPressed: (){
                        if (_formkey.currentState.validate()) {
                          Navigator.pushNamed(context, MyRoutes.MainScreen);
                        }}),
                )
                ,
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                    ),

                    TextButton(

                      child: Text("Sign Up"),
                      onPressed: (){
                        setState(() {
                         Navigator.pushNamed(context, MyRoutes.signUp);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
