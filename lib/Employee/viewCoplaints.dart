import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import 'package:uscb/api/api.dart';
import 'package:uscb/screens/pallete.dart';
import 'package:http/http.dart' as http;

class viewComplaints extends StatefulWidget {
  @override
  _viewComplaintsState createState() => _viewComplaintsState();
}

class _viewComplaintsState extends State<viewComplaints> {
  final emp = GetStorage();
  final feeder = GetStorage();
  Map<String, dynamic> map;
  List data = [];

  gettingFeeder() async {
    print("feeder called");
    http.Response response =
        await http.get(Uri.parse(Api.getFeeder + "?id=${emp.read("id")}"));
    print(json.decode(response.body));
    var body = json.decode(response.body);
    setState(() {
      //title=body[""]
      map = json.decode(response.body);
      feeder.write("feeder", map['feeder_no']);
      feeder.write("company", map['FeederName']);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    gettingFeeder();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Complaints "),
        backgroundColor: plte.backgroundColor,
        elevation: 10,
      ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: plte.backgroundColor,
        home: Material(
            color: plte.backgroundColor,
            child: ListView(
              children: [
                Container(
                  child: ListTile(
                    tileColor: plte.btnColor,
                    title: Text(
                      emp.read("design"),
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(feeder.read("company")),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Card(
                    shape: StadiumBorder(),
                    margin: EdgeInsets.all(20),
                    elevation: 5,
                    color: plte.btnColor,
                    child: MaterialButton(
                      child: Text(
                        "Proceed",
                        style: TextStyle(letterSpacing: 3, fontSize: 22),
                      ),

                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.empViewComplainMain);
                      },
                    ))
              ],
            )),
      ),
    );
  }
}
