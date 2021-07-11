import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uscb/api/api.dart';
import 'pallete.dart';
import 'package:http/http.dart' as http;

class complaintScreen extends StatefulWidget {
  String value;

  complaintScreen({this.value});

  @override
  _complaintScreenState createState() => _complaintScreenState(value);
}

class _complaintScreenState extends State<complaintScreen> {
  String value;
  String company;
  String cIssue;

  _complaintScreenState(this.value);

  final InternetComplaintIssue = {
    "1": "3G/4G Related Isseu",
    "2": "Account Related Issue",
    "3": "Billing(Overcharging/Tarrif etc)",
    "4": "Bio Metric Vericfication Issue",
    "5": "Fraudulant Calls/SMS",
    "6": "Illegal Use Of CNIC",
    "7": "Quality of Service",
    "8": "Spamming/Bulk Sms"
  };
  final WaterComplaintIsue = {
    "1": "Broken PipeLines",
    "2": "Damaged water supply",
    "3": "Demand for Water Supply",
    "4": "Genral Complaint",
    "5": "Shortage of Water Supply"
  };
  final GasComplaintIsue = {
    "1": "Billing complaint",
    "2": "complaint against employee",
    "3": "Gas Theft",
    "4": "Excess Billing",
    "5": "Gas leakage",
    "6": "Genral Complaint",
    "7": "Installation of new connection",
    "8": "Low Gas",
    "9": "Non Delivery of Bill",
    "10": "Replacement of defective Meter",
    "11": "Violation of Load management shedule",
  };
  final ElectriccomplaintIsue = {
    "1": "Billing complaint",
    "2": "complaint against employee",
    "3": "Electric Theft",
    "4": "Excess Billing",
    "5": "Fault on Line",
    "6": "Genral Complaint",
    "7": "Installation of new connection",
    "8": "Low Voltage",
    "9": "Non Delivery of Bill",
    "10": "Replacement of defective Meter",
    "11": "Violation of Load management shedule",
  };
  final internet = {

  };
  final electric = {
   };
  final gas = {
   };
  List<DropdownMenuItem<String>> menuitems = [];
  List data = [];
  final box = GetStorage();

  getconsumersEmp() async {
    print("Getting consumer details");
    http.Response response = await http
        .get(Uri.parse(Api.gettinConsumerNumbers + "?id=${box.read("id")}"));
    print(json.decode(response.body));
    var body = json.decode(response.body);
    setState(() {
      data = json.decode(response.body);
    });
  }

  @override
  void initState() {
    getconsumersEmp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: plte.btnColor,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: plte.backgroundColor,
        appBar: AppBar(
          title: Center(
              child: Text(
            "Register Complaint of $value",
            style: TextStyle(color: plte.textColor),
          )),
          backgroundColor: plte.backgroundColor,
        ),
        body: Material(color: plte.backgroundColor, child: singlescroll()),
      ),
    );
  }

  Widget textField2(String label) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.adjust_rounded,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(8.0),
          labelText: label,
          labelStyle: TextStyle(color: Colors.white),
          hintStyle: TextStyle(color: Colors.white)),
      style: TextStyle(color: Colors.white),
    );
  }

  Widget singlescroll() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.btnColor,
            margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: ListTile(
              title: Text("Select Your Consumer Number"),
              onTap: () {

              },
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.btnColor,
            margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: ListTile(
              title: textfield("Detail"),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            elevation: 5,
            color: plte.btnColor,
            child: ClipRect(
              child: dropDownC3(),
            ),
          ),
          text("Enter Complaint Detail"),
          Card(
            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.btnColor,
            margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: ListTile(
              title: textfield("Detail"),
            ),
          ),
          SizedBox(height: 10),
          text("Add Attachments"),
          Card(
            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.btnColor,
            margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
            child: ListTile(
              title: textfield("Attachmments"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
              elevation: 1.5,
              minWidth: 150,
              splashColor: plte.textColor,
              shape: StadiumBorder(),
              child: Text(
                "Submit",
                style: TextStyle(
                    color: plte.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              color: plte.btnColor,
              onPressed: () {}),
        ],
      ),
    );
  }

  Widget text(String str) {
    return Container(
        margin: EdgeInsets.only(left: 0, bottom: 0, top: 10),
        child: Text(
          str,
          style: TextStyle(color: plte.activateColor, fontSize: 18),
        ));
  }

  Widget textfield(String label) {
    return TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.adjust_rounded,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide.none),
          contentPadding: EdgeInsets.all(8.0),
          labelStyle: TextStyle(color: Colors.white)),
      style: TextStyle(color: Colors.white),
    );
  }

  dropDownC3() {
    valueChangeOfComaplaintIssue();
    return DropdownButton<String>(
      isExpanded: true,
      iconSize: 30,
      dropdownColor: plte.backgroundColor,
      items: menuitems,
      hint: Text("Select Issue Type",
          style: TextStyle(
              color: plte.activateColor,
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      onChanged: (val) {
        setState(() {
          cIssue = val;
        });
      },
      value: cIssue,
      style: TextStyle(
          color: plte.activateColor, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  valueChangeOfComaplaintIssue() {
    if (value == "Electric") {
      menuitems = [];
      setState(() {
        ElectricIssueC3();
      });
    }
    if (value == "Gas") {
      menuitems = [];
      setState(() {
        GasIssueC3();
      });
    }
    if (value == "Water") {
      menuitems = [];
      setState(() {
        WaterIssueC3();
      });
    }
    if (value == "Internet") {
      menuitems = [];
      setState(() {
        InternetIssueC3();
      });
    }
  }

  dropDownC2() {
    valuechange();
    return DropdownButton<String>(
      isExpanded: true,
      iconSize: 30,
      dropdownColor: plte.backgroundColor,
      items: menuitems,
      hint: Text("Select Category 2",
          style: TextStyle(
              color: plte.activateColor,
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      onChanged: (val) {
        setState(() {
          company = val;
        });
      },
      value: company,
      style: TextStyle(
          color: plte.activateColor, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  valuechange() {
    if (value == "Electric") {
      menuitems = [];
      setState(() {
        electricT();
      });
    }
    if (value == "Internet") {
      menuitems = [];
      setState(() {
        internetF();
      });
    }
    if (value == "Gas") {
      menuitems = [];
      setState(() {
        gasF();
      });
    }
    if (value == "Water") {
      menuitems = [];
      setState(() {
        menuitems.add(
            DropdownMenuItem(value: "1", child: Text("Municipal Services")));
      });
    }
    if (value == "Garbage") {
      menuitems = [];
      setState(() {
        menuitems.add(
            DropdownMenuItem(value: "1", child: Text("Municipal Services")));
      });
    }
  }

  void electricT() {
    for (String key in electric.keys) {
      menuitems.add(
          DropdownMenuItem(value: electric[key], child: Text(electric[key])));
    }
  }

  void gasF() {
    for (String key in gas.keys) {
      menuitems.add(DropdownMenuItem(value: gas[key], child: Text(gas[key])));
    }
  }

  void internetF() {
    for (String key in internet.keys) {
      menuitems.add(
          DropdownMenuItem(value: internet[key], child: Text(internet[key])));
    }
  }

  void ElectricIssueC3() {
    for (String k in ElectriccomplaintIsue.keys) {
      menuitems.add(DropdownMenuItem(
        value: ElectriccomplaintIsue[k],
        child: Text(ElectriccomplaintIsue[k]),
      ));
    }
  }

  void GasIssueC3() {
    for (String k in GasComplaintIsue.keys) {
      menuitems.add(DropdownMenuItem(
        value: GasComplaintIsue[k],
        child: Text(GasComplaintIsue[k]),
      ));
    }
  }

  void WaterIssueC3() {
    for (String k in WaterComplaintIsue.keys) {
      menuitems.add(DropdownMenuItem(
        value: WaterComplaintIsue[k],
        child: Text(WaterComplaintIsue[k]),
      ));
    }
  }

  void InternetIssueC3() {
    for (String k in InternetComplaintIssue.keys) {
      menuitems.add(DropdownMenuItem(
        value: InternetComplaintIssue[k],
        child: Text(InternetComplaintIssue[k]),
      ));
    }
  }
}
