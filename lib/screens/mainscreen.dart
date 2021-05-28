import 'package:flutter/material.dart';
import 'package:uscb/screens/c_main.dart';
import 'pallete.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
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
              height: 200,
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                color: Color(0xFF3b5999).withOpacity(.30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Utility Services And",
                          style: TextStyle(
                              fontSize: 18,
                              color: plte.textColor,
                              letterSpacing: 1),
                          children: [
                            TextSpan(
                                text: "\nComplaint Box",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: plte.activateColor,
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Container(
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(

                      icon: Icon(Icons.app_registration),
                      color: Colors.white,
                      iconSize: 70,
                      splashColor: plte.btnColor,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return c_main();
                        }));
                      }),
                  Text(
                    "Register Complaint",
                    style: TextStyle(
                        color: plte.textColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  IconButton(
                      icon: Icon(Icons.info),
                      color: Colors.white,
                      iconSize: 70,
                      splashColor: plte.btnColor,
                      onPressed: () {}),
                  Text(
                    "Information",
                    style: TextStyle(
                        color: plte.textColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15,),
                  IconButton(
                      icon: Icon(Icons.recommend),
                      color: Colors.white,
                      iconSize: 70,
                      splashColor: plte.btnColor,
                      onPressed: () {}),
                  Text(
                    "Response",
                    style: TextStyle(

                        color: plte.textColor, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
