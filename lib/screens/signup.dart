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
              top: 150,
              child: Container(
                padding: EdgeInsets.all(10.0),
                  height: 350,
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
                    padding: EdgeInsets.only(left: 15.0,right: 15.0, bottom: MediaQuery.of(context).viewInsets.bottom),
                    
                    child: Form(
                      key: _formkey,
                      child: SingleChildScrollView(
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            textfield("Enter Name"),
                            SizedBox(
                              height: 10,
                            ),
                        textfield("Enter Cnic")
                        ,   SizedBox(height: 10,),
                        textfield("Enter Email")
                        ,   SizedBox(height: 10,),
                            textfield("Enter House address")
                            ,   SizedBox(height: 10,),
                            textfield("Enter Province")
                        ,   SizedBox(height: 10,),
                            textfield("Enter District")
                        ,   SizedBox(height: 10,),
                            textfield("Enter Tehsil")
                        ,   SizedBox(height: 10,),
                            textfield("Enter City")
                        ,   SizedBox(height: 10,),
                          textfield("Password"),
                            SizedBox(height: 10,),
                            MaterialButton(
                              elevation: 5,
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
Widget textfield(String title){
  return
  TextFormField(

    validator: (String value){
      if(value.isEmpty){
        return "Required";
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
      contentPadding: EdgeInsets.all(10.0),
      hintText: title,
    ),
  );

}