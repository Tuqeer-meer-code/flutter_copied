import 'package:flutter/material.dart';
import 'package:uscb/screens/complaint.dart';
import 'pallete.dart';

class c_main extends StatefulWidget {
  @override
  _c_mainState createState() => _c_mainState();
}

class _c_mainState extends State<c_main> {
String c_main;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: plte.backgroundColor,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: plte.backgroundColor,
        appBar: AppBar(
          title: Center(
              child: Text(
            "Register Complaint",
            style: TextStyle(color: plte.textColor,fontWeight: FontWeight.bold),
          )),
          backgroundColor: plte.backgroundColor,
        ),
        body: Material(

            color: plte.backgroundColor,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(30),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FlatButton.icon(
                      onPressed: () {
                        c_main="Electric";
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return complaintScreen(value : c_main);
                        }));
                      },
                      icon: Icon(Icons.electrical_services,color: Colors.white,),
                      label: Text("Electric",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),
                      color: plte.btnColor,
                      shape: StadiumBorder(),
                      splashColor: plte.backgroundColor,
                      minWidth: 150,
                      padding: EdgeInsets.all(10),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FlatButton.icon(
                      onPressed: () {
                        c_main="Gas";
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return complaintScreen(value : c_main);
                        }));
                      },
                      icon: Icon(Icons.games,color: Colors.white,),
                      label: Text("Gas",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),
                      color: plte.btnColor,
                      shape: StadiumBorder(),
                      splashColor: plte.backgroundColor,
                      minWidth: 150,
                      padding: EdgeInsets.all(10),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FlatButton.icon(
                      onPressed: () {
                        c_main="Internet";
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return complaintScreen(value : c_main);
                        }));
                      },
                      icon: Icon(Icons.signal_cellular_connected_no_internet_4_bar,color: Colors.white,),
                      label: Text("Internet",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),
                      color: plte.btnColor,
                      shape: StadiumBorder(),
                      splashColor: plte.backgroundColor,
                      minWidth: 150,
                      padding: EdgeInsets.all(10),
                    ),SizedBox(height: 15,),
                    FlatButton.icon(
                      onPressed: () {
                        c_main="Garbage";
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return complaintScreen(value : c_main);
                        }));

                      },
                      icon: Icon(Icons.all_inclusive_sharp,color: Colors.white,),
                      label: Text("Garbage",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),
                      color: plte.btnColor,
                      shape: StadiumBorder(),
                      splashColor: plte.backgroundColor,
                      minWidth: 150,
                      padding: EdgeInsets.all(10),
                    ),SizedBox(height: 10,),
                    SizedBox(height: 15,),
                    FlatButton.icon(
                      onPressed: () {
                        c_main="Telephone";
                      },
                      icon: Icon(Icons.perm_phone_msg_sharp,color: Colors.white,),
                      label: Text("Telephone",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),
                      color: plte.btnColor,
                      shape: StadiumBorder(),
                      splashColor: plte.backgroundColor,
                      minWidth: 150,
                      padding: EdgeInsets.all(10),
                    ),

                  ],
                ),
              ),
            )),
      ),
    );
  }
}
