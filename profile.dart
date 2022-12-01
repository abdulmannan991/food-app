import 'package:flutter/material.dart';
import 'package:foodapp/body.dart';
import 'package:foodapp/screen1.dart';
import 'dart:js';
class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 150,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
                color: Colors.pink),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text("Edit",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
            ),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ScreenOne()));
              },
              icon: Icon(Icons.arrow_back_ios_new_rounded)),
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 100),
              height: 140,
              width: 140,
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 50),
                child: Text(
                  "John",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/Ellipse 2066.png",
                  ),
                ),
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 260, left: 70),
              child: Text(
                "John@gmail.com",
                style: TextStyle(fontSize: 13),
              ),
            ),
          ],
        ));
  }
}
