import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import 'package:uscb/screens/drawer.dart';
import 'package:uscb/screens//pallete.dart';
class EmpmainScreen extends StatefulWidget {
  @override
  _EmpmainScreenState createState() => _EmpmainScreenState();
}

class _EmpmainScreenState extends State<EmpmainScreen> {
  final emp = GetStorage();
  @override
  Widget build(BuildContext context) {
    final String name=emp.read("name");
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: plte.btnColor));

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text("Welcome $name",style: TextStyle(fontSize: 18,color: plte.activateColor),),
        backgroundColor: plte.backgroundColor,
      ),
      backgroundColor: plte.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 150,
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

                      icon: Icon(Icons.add_to_home_screen_sharp),
                      color: Colors.white,
                      iconSize: 70,
                      splashColor: plte.btnColor,
                      onPressed: ()
                      {
                        Navigator.pushNamed(context, MyRoutes.empViewComplaintsPage);
                      }),
                  Text(
                    "View Complaint",
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
                      onPressed: (){
                      } ),
                  Text(
                    "Update Status",
                    style: TextStyle(
                        color: plte.textColor, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
          )
        ],
      ),
      drawer: myDrawer(),
    );
  }
}
