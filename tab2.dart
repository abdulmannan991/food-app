import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:js';
import 'package:foodapp/chicken.dart';

class TabTwo extends StatefulWidget {
  const TabTwo({Key? key}) : super(key: key);

  @override
  State<TabTwo> createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 40),
            child: Text(
              "Chicken Burger",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 209, 23, 10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 10),
            child: Image.asset(
              "images/burger2.png",
              width: 400,
              height: 400,
            ),
          ),
          Container(
            width: 240,
            height: 40,
            margin: EdgeInsets.only(top: 60, left: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color.fromARGB(255, 247, 1, 1),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ChickenBody()));
                },
                child: Text("Click here to see more")),
          ),
          Divider(
            height: 200,
          ),
          Container(
            child: Text(
              "BEEF Burger",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 10, 43, 209)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: Image.asset("images/Capture (3).PNG"),
          ),
          Container(
            width: 240,
            height: 40,
            margin: EdgeInsets.only(top: 60, left: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color.fromARGB(255, 1, 42, 247),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ChickenBody()));
                },
                child: Text("Click here to see more")),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            child: Text(
              "hi",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ));
  }
}
