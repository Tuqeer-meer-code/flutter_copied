import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:uscb/api/api.dart';
import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:uscb/screens/pallete.dart';

class Complaintstatus extends StatefulWidget {
  @override
  _ComplaintstatusState createState() => _ComplaintstatusState();
}

class _ComplaintstatusState extends State<Complaintstatus> {
  final box = GetStorage();
  List data = [];
  String title="";
  gettingcomplaints() async {
    http.Response response = await http
        .get(Uri.parse(Api.yourComplainStatus + "?id=${box.read("id")}"));
    print(json.decode(response.body));
    var body=json.decode(response.body);
    setState(() {
      //title=body[""]
      data = json.decode(response.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    gettingcomplaints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: plte.backgroundColor,
        title: Text("Status of your complaints"),
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
                          " --- " +
                          data[index]["ComplaintDescrption"],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      ),
                    ),
                    subtitle: Text(data[index]["date"],style: TextStyle(color: Colors.deepOrangeAccent),),
                    trailing: Text(data[index]["status"],style: TextStyle(
                  backgroundColor: plte.btnColor,letterSpacing: 2,fontSize: 18),),
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
