import 'package:flutter/material.dart';
import 'package:foodapp/cart.dart';
import 'package:foodapp/models.dart/product.dart';
import 'package:foodapp/screen1.dart';
import 'package:foodapp/tab2.dart';
import 'package:foodapp/widget.dart';

class ChickenBody extends StatelessWidget {
  const ChickenBody({Key? key}) : super(key: key);

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
              "SPECIAL BURGER",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ))),
        body: Stack(
          children: [
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 40,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 80),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return newbtn(products[index]);
                }),
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
        ));
  }
}
