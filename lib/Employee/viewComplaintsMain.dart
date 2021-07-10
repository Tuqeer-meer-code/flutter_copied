import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uscb/api/api.dart';
import 'package:uscb/screens/pallete.dart';
import 'package:http/http.dart' as http;

class viewComplaintsMian extends StatefulWidget {
  @override
  _viewComplaintsMianState createState() => _viewComplaintsMianState();
}

class _viewComplaintsMianState extends State<viewComplaintsMian> {
  final feeder = GetStorage();
  List data = [];

  gettingcomplaintsView() async {
    print("view complaints function called");
    http.Response response = await http.get(
        Uri.parse(Api.viewComplainEmpSide + "?id=${feeder.read("feeder")}"));
    print(json.decode(response.body));
    var body = json.decode(response.body);
    setState(() {
      data = json.decode(response.body);
      print(data);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    gettingcomplaintsView();
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
      body: Container(
          padding: EdgeInsets.only(top: 20),
          color: plte.backgroundColor,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 3,
                      color: plte.tCardColor,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        title: Text(
                          data[index]["Issue"] +
                              " - " +
                              data[index]["date"],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(data[index]["ComplaintDescrption"]),
                        trailing: Text(data[index]["status"],style: TextStyle(
                            backgroundColor: plte.btnColor,letterSpacing: 2),),
                          onTap:(){} ,
                      ),
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
