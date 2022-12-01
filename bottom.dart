// import 'package:flutter/material.dart';
// import 'package:foodapp/alltabs.dart';
// import 'package:foodapp/bottomtab1.dart';
// import 'package:foodapp/bottomtab2.dart';
// import 'package:foodapp/bottomtab3.dart';
// import 'package:foodapp/bottomtab4.dart';
// import 'package:foodapp/tab1.dart';
// import 'package:foodapp/tab2.dart';
// import 'package:foodapp/tab3.dart';
// import 'package:foodapp/tab4.dart';

// class BottomNavigation extends StatefulWidget {
//   @override
//   _BottomNavigationState createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int currentTab = 0;

//   Widget currentScreen = AllTabs();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
//       bottomNavigationBar: BottomAppBar(
//         // notchMargin: 50,
//         color: Colors.red[900],
//         child: Container(
//           height: 60,
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 MaterialButton(
//                     minWidth: 50,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = TabTwo();
//                         currentTab = 0;
//                       });
//                     },
//                     child: Icon(Icons.home,
//                         color: currentTab == 0 ? Colors.white : Colors.black)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = TabThree();
//                         currentTab = 1;
//                       });
//                     },
//                     child: Icon(Icons.favorite,
//                         color: currentTab == 1 ? Colors.white : Colors.black)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = TabFour();
//                         currentTab = 2;
//                       });
//                     },
//                     child: Icon(Icons.search,
//                         color: currentTab == 2 ? Colors.white : Colors.black)),
//                 MaterialButton(
//                     minWidth: 60,
//                     onPressed: () {
//                       setState(() {
//                         currentScreen = Screen4();
//                         currentTab = 3;
//                       });
//                     },
//                     child: Icon(Icons.person,
//                         color: currentTab == 3 ? Colors.white : Colors.black)),
//               ]),
//         ),
//       ),
//     );
//   }
// }
