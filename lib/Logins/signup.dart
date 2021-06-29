import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import '../screens/pallete.dart';
class signupScreen extends StatefulWidget{

  @override
  _signupScreenState createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  @override
  int group = 1;
  var _formkey = GlobalKey<FormState>();
@override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: plte.btnColor));
    return Scaffold(
      backgroundColor: plte.backgroundColor,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 200,
                child: Container(
                  padding: EdgeInsets.only(top: 50, left: 20),
                  color: Color(0xff3b5999).withOpacity(.30),
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
              top: 120,
              child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  height: 400,
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: plte.backgroundColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 10,
                            spreadRadius: 5)
                      ]),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                    ),
                    child: Form(
                      key: _formkey,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            SizedBox(
                              height: 10,
                            ),
                            textfield("Name",namecn),
                            SizedBox(
                              height: 10,
                            ),
                            textfield("Cnic",cniccn),
                            SizedBox(
                              height: 10,
                            ),
                            textfield("Email",emailcn),
                            SizedBox(
                              height: 10,
                            ),
                            textfield("House address",housecn),
                            SizedBox(
                              height: 10,
                            ),
                            textfield("Province",provincecn),
                            SizedBox(
                              height: 10,
                            ),
                            textfield("District",districtcn),
                            SizedBox(
                              height: 10,
                            ),
                            textfield("Tehsil",tehsilcn),
                            SizedBox(
                              height: 10,
                            ),
                            textfield("City",citycn),
                            SizedBox(
                              height: 10,
                            ),
                            textfield("Password",passwordcn),
                            SizedBox(
                              height: 150,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))),
          Positioned(
            top: 530,
            left: 30,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                      hoverColor: plte.backgroundColor,
                      elevation: 3,
                      minWidth: 100,
                      splashColor: plte.textColor,
                      shape: StadiumBorder(),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: plte.textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      color: plte.btnColor,
                      onPressed: () {
                        setState(() {
                          if (_formkey.currentState.validate()) {
                            Navigator.pushNamed(context, MyRoutes.MainScreen);
                          }
                        });
                      }),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        child: Text("Log In"),
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, MyRoutes.LoginRoute);
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  final passwordcn=TextEditingController();
  final districtcn=TextEditingController();
  final tehsilcn=  TextEditingController();
  final citycn=    TextEditingController();
  final provincecn=TextEditingController();
final namecn=      TextEditingController();
  final cniccn=    TextEditingController();
  final emailcn=   TextEditingController();
  final housecn=   TextEditingController();
  Widget textfield(String title ,TextEditingController con ) {

    return TextFormField(
      controller: con,
    validator: (String value) {
      if (value.isEmpty) {
        return "$title is Required";
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
    borderRadius: BorderRadius.all(Radius.circular(30.0)),
    ),
    contentPadding: EdgeInsets.all(5.0),
    hintText: title,
      labelText: title
    ),
    );
  }
}
