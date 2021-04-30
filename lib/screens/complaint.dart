import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pallete.dart';
class complaintScreen extends StatefulWidget {
  @override
  _complaintScreenState createState() => _complaintScreenState();
}

class _complaintScreenState extends State<complaintScreen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: plte.backgroundColor,
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: Center(child:
          Text("Register Complaint",style: TextStyle(color: plte.textColor),)),
          backgroundColor: plte.backgroundColor,

        ),
        body: Material(
            color: plte.backgroundColor,
            child:
            getListView()
        ),
       ),
    );
  }

Widget getListView(){
  return Padding(
    padding: const EdgeInsets.only(top:10),
    child: Container(
      child: ListView(
        children: [
          Card(
            shape: StadiumBorder(),
            margin: EdgeInsets.all(10.0),
            child: ListTile(
            leading: Icon(Icons.arrow_forward),
              subtitle: dropDownC1(),

            ),
          )

        ],
      ),
    ),
  );
}
dropDownC1(){
  return
    DropdownButton<String>(
      dropdownColor: plte.backgroundColor,
    items: [DropdownMenuItem<String>(value: "1",
    child: Center(
      child: Text("Gas",style: TextStyle(color: plte.textColor),),
    ),),
      DropdownMenuItem<String>(value: "2",
        child: Center(
          child: Text("Internet",style: TextStyle(color: plte.textColor)),
        ),),
      DropdownMenuItem<String>(value: "3",
        child: Center(
          child: Text("Water",style: TextStyle(color: plte.textColor)),
        ),),
      DropdownMenuItem<String>(value: "4",
        child: Center(
          child: Text("Electricity",style: TextStyle(color: plte.textColor)),
        ),),
      DropdownMenuItem<String>(value: "5",
        child: Center(
          child: Text("Garbage",style: TextStyle(color: plte.textColor)),
        ),)],
    onChanged: (_value)=>{

    },
      hint: Text("Select Catogery",),
  );

}
}