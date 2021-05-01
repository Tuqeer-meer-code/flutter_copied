import 'package:flutter/material.dart';
import 'pallete.dart';
class c_main extends StatefulWidget {
  @override
  _c_mainState createState() => _c_mainState();
}

class _c_mainState extends State<c_main> {
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
        body: Material(color: plte.backgroundColor, child: getListView()),
      ),
    );
}
}
Widget getListView() {
  return Padding(
    padding: const EdgeInsets.all(50),
    child: Container(
      child: ListView(
        children: [
          Card(
            elevation: 15,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text("Electric",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),
              leading: Icon(
                Icons.electrical_services,
                color: Colors.white,
              ),
            ),
            shadowColor: plte.activateColor,
          ),
          Card(
            elevation: 15,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text("Water",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),

              leading: Icon(
                Icons.water_damage_outlined,
                color: Colors.white,
              ),

            ),
            shadowColor: plte.activateColor,
          ),
          Card(
            elevation: 15,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text("Gas",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),

              leading: Icon(
                Icons.games_sharp,
                color: Colors.white,
              ),
            ),
            shadowColor: plte.activateColor,
          ),
          Card(
            elevation: 15,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text("Internet",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),
              leading: Icon(
                Icons.signal_cellular_connected_no_internet_4_bar,
                color: Colors.white,
              ),
            ),
            shadowColor: plte.activateColor,
          ),

          Card(
            elevation: 15,
            color: plte.backgroundColor,
            shape: StadiumBorder(),
            margin: EdgeInsets.all(10.0),
            child: ListTile(
              title: Text("Garbage",style: TextStyle(color: plte.tCardColor,fontSize: 18,fontWeight: FontWeight.bold),),
              leading: Icon(
                Icons.all_inclusive_sharp,
                color: Colors.white,
              ),
            ),
            shadowColor: plte.activateColor,
          )
        ],
      ),
    ),
  );
}
