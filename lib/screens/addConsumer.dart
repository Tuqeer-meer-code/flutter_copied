import 'package:flutter/material.dart';
import 'package:uscb/api/api.dart';
import 'package:uscb/screens/pallete.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class consumerDetail extends StatefulWidget {
  final int userId;
  const consumerDetail({Key key,this.userId}) : super(key :key);
  @override
  _consumerDetailState createState() => _consumerDetailState(this.userId);
}

class _consumerDetailState extends State<consumerDetail> {
  TextEditingController ehint=new TextEditingController();
  TextEditingController econsumerno=new TextEditingController();
  TextEditingController ghint=new TextEditingController();
  TextEditingController gconsumerno=new TextEditingController();
  _consumerDetailState(int userId);
  saveElectricData()async{
    print("Savingdata");
    print(Api.addconsumer_API);
    print(widget.userId.toString());
    var data={
      "id": "${widget.userId}",
      "hint": ehint.text,
      "consumer_no": econsumerno.text,
    };
    http.Response response=await http.post(Uri.parse(Api.addconsumer_API),body:data);
    var responsedata=json.decode(response.body);
    print(responsedata);
    if(responsedata=="success"){
      print("Done");
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
              title: Text("Success"),
              content: Text("Your Electric Consumer Number Added"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Okay"))
              ]));

    }
    if(responsedata=="No Consumer in database"){
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
              title: Text("Error"),
              content: Text("The consumer number you entered is incorrect"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Okay"))
              ]));

    }
  }
  saveGasData()async{
    print("Savingdata");
    print(Api.addconsumer_API);
    print(widget.userId.toString());
    var data={
      "id": "${widget.userId}",
      "hint": ehint.text,
      "consumer_no": econsumerno.text,
    };
    http.Response response=await http.post(Uri.parse(Api.addconsumer_API),body:data);
    var responsedata=json.decode(response.body);
    print(responsedata);
    if(responsedata=="success"){
      print("Done");
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
              title: Text("Success"),
              content: Text("Your Gas Number Meter has been Added"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Okay"))
              ]));

    }
    if(responsedata=="No Consumer in database"){
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
              title: Text("Error"),
              content: Text("The consumer number you entered is incorrect"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Okay"))
              ]));

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Consumer Numbers ${widget.userId} "),
        shadowColor: Colors.black,
        backgroundColor: plte.btnColor,
      ),
      body: Material(
        color: plte.backgroundColor,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller:econsumerno,
              decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.adjust_rounded,
                color: Colors.white,
              ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    // borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.all(10.0),
                  labelText: "List Electric Consumer No",
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(color: Colors.white)),
          style: TextStyle(color: Colors.white),
        ),
            ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller:ehint,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.adjust_rounded,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          // borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: "List Hint",
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white)),
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                MaterialButton(
                    elevation: 5,
                    minWidth: 150,
                    splashColor: plte.textColor,
                    shape: StadiumBorder(),
                    child: Text(
                      "List",
                      style: TextStyle(
                          color: plte.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    color: plte.btnColor,
                    onPressed: () async{
                      saveElectricData();
                    }),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: gconsumerno,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.adjust_rounded,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          // borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: "List Gas Consumer No",
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white)),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    controller: ghint,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.adjust_rounded,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25.0)),
                          // borderSide: BorderSide.none
                        ),
                        contentPadding: EdgeInsets.all(10.0),
                        labelText: "List Hint",
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white)),
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                MaterialButton(
                    elevation: 5,
                    minWidth: 150,
                    splashColor: plte.textColor,
                    shape: StadiumBorder(),
                    child: Text(
                      "List",
                      style: TextStyle(
                          color: plte.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    color: plte.btnColor,
                    onPressed: () {
                      saveGasData();
                    }),

                SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom,
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
