import 'dart:js';

import 'package:flutter/material.dart';
import 'package:foodapp/screen1.dart';
import 'package:foodapp/widget.dart';

class Product {
  getById(int id) =>
      products.firstWhere((element) => element.id == id, orElse: null);

  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Hii",
      price: 234,
      size: 12,
      description: "its me",
      image: "images/Capture (3).PNG",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Hii",
      price: 234,
      size: 12,
      description: "its me",
      image: "images/burger2.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 3,
      title: "Hii",
      price: 234,
      size: 12,
      description: "its me",
      image: "images/Capture (3).PNG",
      color: Color(0xFF3D82AE)),
  Product(
      id: 4,
      title: "Hii",
      price: 234,
      size: 12,
      description: "its me",
      image: "images/burger2.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 5,
      title: "Hii",
      price: 234,
      size: 12,
      description: "its me",
      image: "images/burger2.png",
      color: Color(0xFF3D82AE)),
  // Product(
  //   id: 6,
  //   title: containerr(100, 140, 120, 1, Colors.cyan,
  //       "images/189-1899124_kfc-zinger-burger-png-transparent-png.png", 40),
  //   price: 234,
  //   size: 12,
  //   description: btn(160, 20, Colors.red, "Buy now", ScreenOne(), context),
  //   image: write("Zinger burger", 220, 30),
  //   color: Color(0xFFAEAEAE),
  // ),
  // Product(
  //     id: 5,
  //     title: containerr(100, 140, 120, 1, Colors.cyan,
  //         "images/189-1899124_kfc-zinger-burger-png-transparent-png.png", 40),
  //     price: 234,
  //     size: 12,
  //     description: btn(160, 20, Colors.red, "Buy now", ScreenOne(), context),
  //     image: write("Zinger burger", 220, 30),
  //     color: Color(0xFFFB7883)),
  // Product(
  //   id: 6,
  //   title: containerr(100, 140, 120, 1, Colors.cyan,
  //       "images/189-1899124_kfc-zinger-burger-png-transparent-png.png", 40),
  //   price: 234,
  //   size: 12,
  //   description: btn(160, 20, Colors.red, "Buy now", ScreenOne(), context),
  //   image:  "images/Capture (3).PNG",
  //   color: Color(0xFFAEAEAE),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
