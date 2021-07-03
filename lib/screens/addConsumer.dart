import 'package:flutter/material.dart';
import 'package:uscb/screens/pallete.dart';
class consumerDetail extends StatefulWidget {
  @override
  _consumerDetailState createState() => _consumerDetailState();
}

class _consumerDetailState extends State<consumerDetail> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: plte.backgroundColor,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
            decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.adjust_rounded,
              color: Colors.white,
            ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  // borderSide: BorderSide.none
              ),
              contentPadding: EdgeInsets.all(10.0),
                labelText: "Add Electric Consumer No",
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: TextStyle(color: Colors.white)),
        style: TextStyle(color: Colors.white),
      ),
          ),       MaterialButton(
                  elevation: 5,
                  minWidth: 150,
                  splashColor: plte.textColor,
                  shape: StadiumBorder(),
                  child: Text(
                    "Add",
                    style: TextStyle(
                        color: plte.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  color: plte.btnColor,
                  onPressed: () {}),


              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.adjust_rounded,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        // borderSide: BorderSide.none
                      ),
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: "Add Gas Consumer No",
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                  elevation: 5,
                  minWidth: 150,
                  splashColor: plte.textColor,
                  shape: StadiumBorder(),
                  child: Text(
                    "Add",
                    style: TextStyle(
                        color: plte.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  color: plte.btnColor,
                  onPressed: () {}),

              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom,
              ),
            ],
          ),
        ),
      )
    );
  }
}
