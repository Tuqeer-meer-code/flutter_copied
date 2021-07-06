import 'package:flutter/material.dart';
import 'package:uscb/api/api.dart';
import 'package:uscb/screens/pallete.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class consumerDetail extends StatefulWidget {
  @override
  _consumerDetailState createState() => _consumerDetailState();
}

class _consumerDetailState extends State<consumerDetail> {
  TextEditingController hint=new TextEditingController();
  TextEditingController consumerno=new TextEditingController();
  savedata()async{
    print("Savingdata");
    print(Api.addconsumer_API);
    var data={
      "id": "1",
      "hint": hint.text,
      "consumer_no": consumerno.text,
    };
    http.Response response=await http.post(Uri.parse(Api.addconsumer_API),body:data);
    var responsedata=json.decode(response.body);
    print(responsedata);
    if(responsedata=="success"){
      print("Done");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: plte.backgroundColor,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller:consumerno,
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
                labelText: "Add Electric Consumer No",
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: TextStyle(color: Colors.white)),
        style: TextStyle(color: Colors.white),
      ),
          ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller:hint,
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
                      labelText: "Add Hint",
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
                    "Add",
                    style: TextStyle(
                        color: plte.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  color: plte.btnColor,
                  onPressed: () {
                    savedata();
                  }),


              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
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
                      labelText: "Add Gas Consumer No",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
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
                      labelText: "Add Hint",
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
                    "Add",
                    style: TextStyle(
                        color: plte.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  color: plte.btnColor,
                  onPressed: () {}),

              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom,
              ),
            ],
          ),
        ),
      )
    );
  }
}
