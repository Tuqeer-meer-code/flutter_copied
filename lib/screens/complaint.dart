import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pallete.dart';

class complaintScreen extends StatefulWidget {
  String value;

  complaintScreen({this.value});
  @override
  _complaintScreenState createState() => _complaintScreenState(value);
}
class _complaintScreenState extends State<complaintScreen> {
String value;
String company;
_complaintScreenState(this.value);
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
                "Register Complaint of $value",
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
            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
            child: ListTile(

              leading: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),

              title: Text(value),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
            child: ListTile(
              leading: Icon(
                Icons.arrow_forward,
                color: Colors.white,

              ),
              title: dropDownC2(),
            ),
          ),

        text("Enter Complaint Detail"),
          Card(

            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Detail"),
            ),
          ),
          text("Enter Province"),
          Card(

            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),child: ListTile(
              title: textfield("Province"),
            ),
          ),
          text("Enter District"),
          Card(

            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),child: ListTile(
              title: textfield("District"),
            ),
          ),
          text("Enter Tehsil"),
          Card(

            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),child: ListTile(
              title: textfield("Tehsil"),
            ),
          ),

          text("Enter city"),

          Card(
            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),          child: ListTile(
              title: textfield("City"),
            ),
          ),
          text("Add Attachments"),
          Card(
            elevation: 5,
            shadowColor: Colors.deepPurpleAccent,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
            child: ListTile(
              title: textfield("Attachmments"),
            ),
          ),


      MaterialButton(
          elevation: 1.5,

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
  Widget text(String str){
    return
      Container(
          margin: EdgeInsets.only(left: 0,bottom: 0,top: 10),
          child: Text(str,style: TextStyle(color: plte.activateColor,fontSize: 18),));
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
                    labelStyle: TextStyle(color: Colors.white)
      ),
      style: TextStyle(color: Colors.white),


    );
  }
  dropDownC2() {
    valuechange();
    return DropdownButton<String>(
    dropdownColor: plte.backgroundColor,
      items: menuitems,
      hint: Text("Select Category 2",style: TextStyle(color: Colors.white)),
      onChanged: (val){
      setState(() {

        company=val;
      });
      },
      value: company,
    );
  }
valuechange() {
if(value=="Electric"){
  menuitems=[];
  setState(() {
    electricT();

  });
}
if(value=="Internet"){
  menuitems=[];
  setState(() {
    internetF();
  });
}
if(value=="Gas"){
  menuitems=[];
  setState(() {
    gasF();
  });
}

  }
  void electricT(){
    for (String key in electric.keys) {
      menuitems.add(DropdownMenuItem(value: electric[key], child: Text(electric[key])));
    }
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
