import 'package:flutter/material.dart';
import 'package:foodapp/alltabs.dart';
import 'package:foodapp/cart.dart';
import 'package:foodapp/desserts.dart';
import 'package:foodapp/tab2.dart';
import 'package:foodapp/tab3.dart';
import 'package:foodapp/tab4.dart';
import 'package:foodapp/tab1.dart';
import 'dart:js';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            actions: [Icon(Icons.search)],
            backgroundColor: Color.fromARGB(255, 16, 206, 76),
            title: Center(
                child: Text(
              "Food Shop",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 176, 31, 202)),
            )),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  color: Colors.purple,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("images/Ellipse 2046.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Text(
                          "john jackson",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        Text(
                          "johnjackson@gmail.com",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.people),
                    title: Text("Profile"),
                  ),
                ),
                Divider(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settnigs"),
                  ),
                ),
                Divider(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.folder_zip),
                    title: Text("Info"),
                  ),
                ),
                Divider(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(1.0),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Color.fromARGB(255, 27, 167, 32),
                          borderRadius: BorderRadius.circular(20)),
                      tabs: [
                        Tab(
                          text: "Breakfast",
                        ),
                        Tab(
                          text: "Lunch",
                        ),
                        Tab(
                          text: "Dinner",
                        ),
                        Tab(
                          text: "Desets",
                        ),
                      ]),
                ),
                Expanded(
                    child: TabBarView(children: [
                  AllTabs(),
                  TabTwo(),
                  TabThree(),
                  TabFour(),
                ])),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => AddCart()));
                      },
                      child: Icon(Icons.add_shopping_cart_outlined)),
                ),
              ],
            ),
          )),
    );
  }
}
