import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pallete.dart';
class complaintScreen extends StatefulWidget {
  @override
  _complaintScreenState createState() => _complaintScreenState();
}

class _complaintScreenState extends State<complaintScreen> {
  String valueC1="";
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
            elevation: 15,
            color: plte.iconColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.all(10.0),
            child: ListTile(
            leading: Icon(Icons.arrow_forward,color: Colors.white,),
              subtitle: dropDownC1(),

            ),
          ),
          Card(
            elevation: 15,
            color: plte.iconColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              leading: Icon(Icons.album_outlined,color: Colors.white,),
              subtitle: textField("Enter Consumer Number"),
              

            ),
          ),
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
    child: Text("Gas",style: TextStyle(color: plte.textColor),
    ),
    ),
      DropdownMenuItem<String>(value: "2",
        child: Text("Internet",style: TextStyle(color: plte.textColor)),),
      DropdownMenuItem<String>(value: "3",
        child: Text("Water",style: TextStyle(color: plte.textColor)),),
      DropdownMenuItem<String>(value: "4",
        child: Text("Electricity",style: TextStyle(color: plte.textColor)),),
      DropdownMenuItem<String>(value: "5",
        child: Text("Garbage",style: TextStyle(color: plte.textColor)),)],
    onChanged: (_value)=>{
          valueC1=_value
    },
      hint: Text("Select Catogery",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
  );

}
textField(String title){
return
  TextField(
    cursorColor: plte.backgroundColor,
    decoration: new InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
    hintText: title,hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)
    )
  );
    
}
}