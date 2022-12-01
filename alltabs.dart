import 'package:flutter/material.dart';
import 'package:foodapp/tab1.dart';
import 'dart:js';
class AllTabs extends StatefulWidget {
  const AllTabs({Key? key}) : super(key: key);

  @override
  State<AllTabs> createState() => _AllTabsState();
}

class _AllTabsState extends State<AllTabs> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TabOne(),
        TabOne(),
        TabOne(),
        TabOne(),
      ],
    );
  }
}
