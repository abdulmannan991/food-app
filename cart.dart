import 'dart:ui';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:foodapp/models.dart/cart_product.dart';
import 'package:foodapp/screen1.dart';

class AddCart extends StatefulWidget {
  const AddCart({Key? key}) : super(key: key);

  @override
  State<AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<AddCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
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
            " Cart items",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ))),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: CartList(),
            ),
          ),
          Divider(),
          CartTotal(),
        ],
      ),
    );
  }
}

class CartTotal extends StatelessWidget {
  CartTotal({Key? key}) : super(key: key);

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          Text(
            "\$${_cart.totalprice}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Container(
            width: 140,
            height: 40,
            margin: EdgeInsets.only(top: 20, left: 150),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color.fromARGB(255, 247, 1, 1),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Buying not supported yet.")));
                },
                child: Text("Buy now")),
          ),
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {
  const CartList({Key? key}) : super(key: key);

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _cart.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.done_all),
            trailing: IconButton(
                onPressed: () {}, icon: Icon(Icons.remove_circle_outline)),

            // title: _cart.items[index].name,
          );
        });
  }
}
