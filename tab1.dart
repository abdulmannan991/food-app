import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/alltabs.dart';
import 'package:foodapp/profile.dart';
import 'dart:js';
class TabOne extends StatefulWidget {
  const TabOne({Key? key}) : super(key: key);

  @override
  State<TabOne> createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 100, left: 15),
              height: 250,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 140, left: 240),
          height: 160,
          child: Image.asset(
            "images/break.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 120, left: 25),
          child: Text(
            "Cook",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 160, left: 25),
          child: Text(
            "Something new",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 200, left: 25),
          child: Text(
            " new and tasty recipe for you",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 250, left: 30),
          child: Icon(
            Icons.star,
            color: Colors.amber,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 255, left: 60),
          child: Text(
            " 95 recipies",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 290, left: 30),
          child: Icon(
            Icons.cookie,
            color: Colors.brown,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 295, left: 60),
          child: Text(
            " 15 chefs",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        ),
      ],
    );
  }
}
