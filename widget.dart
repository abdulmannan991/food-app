import 'package:flutter/material.dart';
import 'package:foodapp/models.dart/product.dart';
import 'dart:js';

Widget containerr(
  var top,
  height,
  width,
  left,
  color,
  image,
  ibottom,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: top, left: left),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: ibottom,
        ),
        child: Image.asset(
          image,
        ),
      ),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
    ),
  );
}

Widget write(var text, top, left) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      margin: EdgeInsets.only(top: top, left: left),
      child: Text(
        text,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget btn(var top, left, color, text, name, context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 100,
      height: 30,
      margin: EdgeInsets.only(top: top, left: left),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              primary: color),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => name));
          },
          child: Text(text)),
    ),
  );
}

Widget dessets(
  var top,
  height,
  width,
  left,
  color,
  image,
  ibottom,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: height,
      width: width,
      margin: EdgeInsets.only(top: top, left: left),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: ibottom,
        ),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
    ),
  );
}

Widget newbtn(Product count) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Card(
      child: Container(
        child: Column(
          children: [
            // Text(count.title)
            Image(image: AssetImage(count.image)),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(onPressed: () {}, child: Text("Buy now")),
            )
          ],
        ),
      ),
    ),
  );
}
