import 'package:flutter/material.dart';
import 'package:foodapp/screen1.dart';
import 'package:foodapp/widget.dart';
import 'dart:js';
class TabThree extends StatefulWidget {
  const TabThree({Key? key}) : super(key: key);

  @override
  State<TabThree> createState() => _TabThreeState();
}

class _TabThreeState extends State<TabThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, left: 20),
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Image.asset("images/Capture (4).PNG"),
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow,
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    child: Image.asset("images/Capture (5).PNG"),
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow,
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    child: Image.asset("images/Capture (4).PNG"),
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow,
                          ),
                        ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    child: Image.asset("images/Capture (5).PNG"),
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          write("Chicken pizza", 120, 50),
          write("Chicken Fajita ", 120, 220),
          // write("Chicken pizza", 120, 350),

          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      child: Image.asset(
                        "images/Capture (5).PNG",
                      ),
                      margin: EdgeInsets.only(top: 200, left: 20),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(15)),
                      height: 150,
                      width: 180,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset("images/Capture (5).PNG"),
                    margin: EdgeInsets.only(top: 200, left: 20),
                    height: 150,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset("images/Capture (5).PNG"),
                    margin: EdgeInsets.only(top: 200, left: 20),
                    height: 150,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset("images/Capture (5).PNG"),
                    margin: EdgeInsets.only(top: 200, left: 20),
                    height: 150,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    child: Image.asset("images/Capture (5).PNG"),
                    margin: EdgeInsets.only(top: 200, left: 20),
                    height: 150,
                    width: 180,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
            ],
          ),
          btn(315, 50, Colors.deepPurpleAccent, "Buy now", ScreenOne(),
              context),
          btn(315, 220, Colors.deepPurpleAccent, "Buy now", ScreenOne(),
              context)
          // btn(315, 50, Colors.deepPurpleAccent, "Buy now"),
        ],
      ),
    );
  }
}
