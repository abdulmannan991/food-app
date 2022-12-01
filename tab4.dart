import 'package:flutter/material.dart';
import 'package:foodapp/screen1.dart';
import 'package:foodapp/widget.dart';
import 'dart:js';
class Dessert extends StatefulWidget {
  const Dessert({Key? key}) : super(key: key);

  @override
  State<Dessert> createState() => _DessertState();
}

class _DessertState extends State<Dessert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ScreenOne()));
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
          backgroundColor: Colors.red,
          title: Center(
              child: Text(
            "Dessert menu",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
          )),
        ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              margin: EdgeInsets.only(top: 220, left: 48),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(15)),
            ),
            dessets(60, 180, 300, 40, Color.fromARGB(255, 220, 212, 212),
                "images/raspberry.jpg", 1),
            write("100 Rs", 260, 60),
            btn(250, 170, Color.fromARGB(255, 202, 23, 10), "Buy now",
                ScreenOne(), context),
            Container(
              margin: EdgeInsets.only(top: 590, left: 48),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(15)),
            ),
            dessets(430, 180, 300, 40, Color.fromARGB(255, 220, 212, 212),
                "images/choclate1.jpg", 1),
            write("250 Rs", 630, 60),
            btn(620, 170, Color.fromARGB(255, 202, 23, 10), "Buy now",
                ScreenOne(), context),
            Container(
              margin: EdgeInsets.only(top: 890, left: 48),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(15)),
            ),
            dessets(730, 180, 300, 40, Color.fromARGB(255, 220, 212, 212),
                "images/oreo.jpg", 1),
            write("300 Rs", 930, 60),
            btn(925, 170, Color.fromARGB(255, 202, 23, 10), "Buy now",
                ScreenOne(), context),
            Container(
              margin: EdgeInsets.only(top: 1180, left: 48),
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.cyan, borderRadius: BorderRadius.circular(15)),
            ),
            dessets(1030, 180, 300, 40, Color.fromARGB(255, 220, 212, 212),
                "images/new.jpg", 1),
            write("400 Rs", 1220, 60),
            btn(1215, 170, Color.fromARGB(255, 202, 23, 10), "Buy now",
                ScreenOne(), context),
            Container(
              margin: EdgeInsets.only(top: 1300),
              height: 100,
              color: Colors.white,
            )
          ]),
        ));
  }
}
