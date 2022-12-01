import 'package:flutter/material.dart';
import 'package:foodapp/juices.dart';
import 'package:foodapp/models.dart/cart_product.dart';
import 'package:foodapp/models.dart/product.dart';
import 'package:foodapp/tab4.dart';
import 'package:foodapp/widget.dart';
import 'dart:js';
class TabFour extends StatefulWidget {
  const TabFour({Key? key}) : super(key: key);

  @override
  State<TabFour> createState() => _TabFourState();
}

class _TabFourState extends State<TabFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, left: 40),
            child: Text(
              "Delicious Dessert",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 209, 23, 10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 10),
            child: Image.asset(
              "images/raspberry.jpg",
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
                      MaterialPageRoute(builder: (context) => Dessert()));
                },
                child: Text("Click here to see more")),
          ),
          Divider(
            height: 200,
          ),
          Container(
            child: Text(
              "Jucies",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 10, 43, 209)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: Image.asset("images/juices.webp"),
          ),
          Container(
            width: 240,
            height: 40,
            margin: EdgeInsets.only(top: 60, left: 20),
            child: AddToCart(),
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

class AddToCart extends StatefulWidget {
  const AddToCart({
    Key? key,
  }) : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool isAdded = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          primary: Color.fromARGB(255, 1, 42, 247),
        ),
        onPressed: () {
          isAdded = isAdded;
          final _catalog = Product;
          final _cart = CartModel();
          // _cart.add(_cata)

          setState(() {});
        },
        child: isAdded ? Icon(Icons.done) : Text("Add to cart"));
  }
}
