// import 'package:flutter/material.dart';
// import 'package:foodapp/product.dart';


// class ItemCard extends StatelessWidget {
//   final Product product;
//   final Function press;
//    ItemCard({
//     required Key key,
//     required this.product,
//     required this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){},
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               padding: EdgeInsets.all(8.0),
//               // For  demo we use fixed height  and width
//               // Now we dont need them
//               // height: 180,
//               // width: 160,
//               decoration: BoxDecoration(
//                 color: product.color,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Hero(
//                 tag: "${product.id}",
//                 child: Image.asset(product.image),
//               ),
//             ),
//           ),
//           Padding(
//             padding:  EdgeInsets.symmetric(vertical: 2 / 4),
//             child: Text(
//               // products is out demo list
//               product.title,
//               style: TextStyle(color: Colors.red),
//             ),
//           ),
//           Text(
//             "\$${product.price}",
//             style: TextStyle(fontWeight: FontWeight.bold),
//           )
//         ],
//       ),
//     );
//   }
// }