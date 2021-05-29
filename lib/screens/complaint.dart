import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pallete.dart';

class complaintScreen extends StatefulWidget {
  @override
  _complaintScreenState createState() => _complaintScreenState();
}

class _complaintScreenState extends State<complaintScreen> {
  final internet={
    "1": "NayaTel",
    "2": "SPA",
    "3":"Pak Telecommunication",
    "4": "Paknet",
    "5": "Supernet Limited",
    "6": "Wateen Telecom",
    "7": "Wi-Tribe",
    "8": "WorldCall",

  };
  final electric = {
    "1": "FESCO",
    "2": "GEPCO",
    "3": "HESCO",
    "4": "SEPCO",
    "5": "KESC",
    "6": "MEPCO",
    "7": "TESKO",
    "8": "KAPCO",
  };
  final gas = {
    "1": "Kadwani Gas",
    "2": "Qadirpur Gas",
    "3": "Sawan Gas",
    "4": "Sui Gas",
    "5": "Tal Block",
  };
  String valueC1 ;
  String second;
  bool changeState = false;
  List<DropdownMenuItem<String>> menuitems = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: plte.backgroundColor,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
                "Register Complaint",
                style: TextStyle(color: plte.textColor),
              )),
          backgroundColor: plte.backgroundColor,
        ),
        body: Material(color: plte.backgroundColor, child: singlescroll()),
      ),
    );
  }
Widget textField2(String label){
  return
    TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.adjust_rounded,
            color: Colors.white,
          ),
          border: OutlineInputBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(20.0)),
              borderSide: BorderSide.none
          ),

          contentPadding: EdgeInsets.all(8.0),

          labelText: label,labelStyle: TextStyle(color: Colors.white),
          hintStyle: TextStyle(color: Colors.white)
      ),
      style: TextStyle(color: Colors.white),

    );

}
  Widget singlescroll(){
    return SingleChildScrollView(
      child:  Column(
        children: [
          Card(
            shadowColor: plte.activateColor,
            elevation: 3,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(

              leading: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),

              title: dropDownC1(),
            ),
          ),
          Card(
            elevation: 3,
            shadowColor: plte.activateColor,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(
              leading: Icon(
                Icons.arrow_forward,
                color: Colors.white,

              ),
              title: dropDownC2(),
            ),
          ),

          Card(
            elevation: 3,
            shadowColor: plte.activateColor,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Enter Consumer number"),
            ),
          ),
          Card(
            elevation: 3,
            shadowColor: plte.activateColor,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Enter Complaint Type"),
            ),
          ),

          Card(
            elevation: 3,
            shadowColor: plte.activateColor,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Enter Complaint Location"),
            ),
          ),
          Card(
            elevation: 3,
            shadowColor: plte.activateColor,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Enter Province"),
            ),
          ),
          Card(
            elevation: 3,
            shadowColor: plte.activateColor,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Enter District"),
            ),
          ),
          Card(
            elevation: 3,
            shadowColor: plte.activateColor,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Enter Tehsil"),
            ),
          ),

          Card(
            elevation: 3,
            shadowColor: plte.activateColor,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Enter City"),
            ),
          ),
      MaterialButton(
          elevation: 3,

          minWidth: 150,
          splashColor: plte.textColor,
          shape: StadiumBorder(),
          child: Text("Submit",style: TextStyle(color: plte.textColor,fontSize: 16,fontWeight: FontWeight.bold),),
          color: plte.backgroundColor,

          onPressed: (){
          }),
        ],
      ),
    );
  }
  Widget textfield(
      String label){
return
    TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.adjust_rounded,
          color: Colors.white,
        ),
        border: OutlineInputBorder(
          borderRadius:
          BorderRadius.all(Radius.circular(20.0)),
borderSide: BorderSide.none
        ),

        contentPadding: EdgeInsets.all(8.0),

        labelText: label,labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white)
      ),
      style: TextStyle(color: Colors.white),

    );
  }


  dropDownC1() {
    return DropdownButton<String>(
      dropdownColor: plte.backgroundColor,
      items: [
        DropdownMenuItem<String>(
          value: "1",
          child: Text(
            "Electricity",
            style: TextStyle(color: plte.textColor),
          ),
        ),
        DropdownMenuItem<String>(
          value: "2",
          child: Text("Internet", style: TextStyle(color: plte.textColor)),
        ),

        DropdownMenuItem<String>(
          value: "3",
          child: Text("Gas", style: TextStyle(color: plte.textColor)),
        ),

      ],
      onChanged: (_value)=> valuechange(_value),

      hint: Text(
        "Select category 1",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
value: valueC1,
          );

  }
  dropDownC2() {

    return DropdownButton<String>(
    dropdownColor: plte.backgroundColor,
      items: menuitems,
      disabledHint: Text("Select Category 1 First",style: TextStyle(color: Colors.white),),
      onChanged: changeState
          ? null
          : (_value) => secondValueChange(_value),
      hint: Text("Select Category 2",style: TextStyle(color: Colors.white)),
    value: second,
    );
  }

  valuechange(_value) {
if(_value=="1"){
  menuitems=[];
  setState(() {
    electricT();
    valueC1=_value;

    changeState=false;
  });
}
if(_value=="2"){
  menuitems=[];
  setState(() {
    valueC1=_value;
    changeState=false;
    internetF();
  });
}
if(_value=="3"){
  menuitems=[];
  setState(() {
    gasF();
    valueC1=_value;
    changeState=false;
  });
}

  }
  void electricT(){
    for (String key in electric.keys) {
      menuitems.add(DropdownMenuItem(value: electric[key], child: Text(electric[key])));
    }
  }
  secondValueChange(_value) {
    setState(() {
      second = _value;
    });
  }
void gasF(){
  for (String key in gas.keys) {
    menuitems.add(DropdownMenuItem(value: gas[key],
        child: Text(gas[key])));
  }
}
  void internetF() {
    for (String key in internet.keys) {
      menuitems.add(DropdownMenuItem(value: internet[key], child: Text(internet[key])));
    }
  }
  }
