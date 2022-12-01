import 'package:flutter/material.dart';
import 'package:foodapp/screen1.dart';
import 'dart:js';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ScreenOne() ,
      
    );
  }
}