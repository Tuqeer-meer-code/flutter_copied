import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
import 'package:uscb/Routes/MyRoutes.dart';
import 'addConsumer.dart';
import 'drawer.dart';
import 'pallete.dart';

class mainScreen extends StatefulWidget {
  final int id;

  const mainScreen({Key key, this.id}) : super(key: key);

  @override
  _mainScreenState createState() => _mainScreenState(this.id);
}

class _mainScreenState extends State<mainScreen> {
  _mainScreenState(int id);
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    final int id = box.read("id");
    final name =box.read("name");
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: plte.btnColor));

    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Center(
            child: Text(
          "Welcome $name",
          style: TextStyle(fontSize: 22, color: plte.activateColor),
        )),
        backgroundColor: plte.backgroundColor,
      ),
      backgroundColor: plte.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 150,
              child: Container(
                padding: EdgeInsets.only(top: 90, left: 20),
                color: Color(0xFF3b5999).withOpacity(.30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Utility Services And ",
                          style: TextStyle(
                              fontSize: 18,
                              color: plte.textColor,
                              letterSpacing: 1),
                          children: [
                            TextSpan(
                                text: "\nComplaint Box",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: plte.activateColor,
                                    fontWeight: FontWeight.bold)),
                          ]),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Container(
                height: 400,
                child: GridView.custom(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  childrenDelegate: SliverChildListDelegate(
                    [
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.add_box_rounded),
                              color: plte.activateColor,
                              iconSize: 70,
                              splashColor: plte.btnColor,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => consumerDetail(userId: widget.id,)),
                                );
                                //
                                // Navigator.pushNamed(context, MyRoutes.add);
                              }),
                          Text(
                            "Add Details",
                            style: TextStyle(
                                color: plte.textColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.app_registration),
                              color: plte.activateColor,
                              iconSize: 70,
                              splashColor: plte.btnColor,
                              onPressed: () {
                                Navigator.pushNamed(context, MyRoutes.ComplainButtonsChoice);
                              }),
                          Text(
                            "Register Complaint",
                            style: TextStyle(
                                color: plte.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.info),
                              color: plte.activateColor,
                              iconSize: 70,
                              splashColor: plte.btnColor,
                              onPressed: () {
                                Navigator.pushNamed(context, MyRoutes.statusScreen);
                              }),
                          Text(
                            "Your Complaint Status",
                            style: TextStyle(
                                color: plte.textColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                              icon: Icon(Icons.recommend),
                              color: plte.activateColor,
                              iconSize: 70,
                              splashColor: plte.btnColor,
                              onPressed: () {}),
                          Text(
                            "Give Response",
                            style: TextStyle(
                                color: plte.textColor,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
          )
        ],
      ),
      drawer: myDrawer(),
    );
  }
}
