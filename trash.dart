// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';

// // class BodyHi extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         SizedBox(
// //           height: 240,
// //           child: Stack(
// //             children: [
// //               ClipPath(
// //                 clipper: CustomShape(),
// //                 child: Container(
// //                   height: 150,
// //                   color: Colors.white,
// //                 ),
// //               )
// //             ],
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }

// // class CustomShape extends CustomClipper<Path> {
// //   @override
// //   Path getClip(Size size) {
// //     var path = Path();
// //     double height = size.height;
// //     double width = size.width;
// //     path.lineTo(0, height - 100);
// //     path.quadraticBezierTo(width / 2, height, width, height - 100);
// //     path.lineTo(width, 0);
// //     path.close();
// //     return Path();
// //   }

// //   @override
// //   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
// //     return true;
// //   }
// // }




// import 'package:flutter/material.dart';
// import 'package:foodapp/body.dart';

// class ProfileIs extends StatelessWidget {
//   const ProfileIs({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           TextButton(
//             onPressed: () {},
//             child: Text("Edit",
//                 style: TextStyle(color: Colors.black, fontSize: 15)),
//           )
//         ],
//         leading: IconButton(
//             onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
//         title: Text(
//           "Profile",
//           style: TextStyle(
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(196, 83, 143, 37),
//       ),
   
//     );
//   }
// }




// chicken body

// import 'package:flutter/material.dart';
// import 'package:foodapp/product.dart';
// import 'package:foodapp/screen1.dart';
// import 'package:foodapp/tab2.dart';
// import 'package:foodapp/widget.dart';

// class ChickenBody extends StatelessWidget {
//   const ChickenBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             leading: IconButton(
//                 onPressed: () {
//                   Navigator.pushReplacement(context,
//                       MaterialPageRoute(builder: (context) => ScreenOne()));
//                 },
//                 icon: Icon(Icons.arrow_back_ios_new_rounded)),
//             backgroundColor: Colors.red,
//             title: Center(
//                 child: Text(
//               "SPECIAL BURGER",
//               style:
//                   TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
//             ))),
//         body: Expanded(child:   GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.76), itemBuilder: (context,index)=>itemcard(product: products[index], press: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>)))))
        
//         );
//   }
// }

// class itemcard extends StatelessWidget {
//   final Product product;
//   final Function press;
//   const itemcard({
//     Key? key,
//     required this.product,
//     required this.press,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){},
//       child: Stack(children: [
//         //   top height width left = containerr
//         // 1
//         containerr(150, 130, 150, 1, Colors.cyan,
//             "images/189-1899124_kfc-zinger-burger-png-transparent-png.png", 1),
//         write("Chesse burger", 150, 30),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(products[0].title),
//         ),
//         Text("/234"),
    
      
//       ]),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:foodapp/chicken.dart';
// import 'package:foodapp/product.dart';


// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding:  EdgeInsets.symmetric(horizontal: 2),
//           child: Text(
//             "Women",
//             style: Theme.of(context)
//                 .textTheme
//                 .headline5
            
//           ),
//         ),
//         ChickenBody(),
//         Expanded(
//           child: Padding(
//             padding:  EdgeInsets.all(8.0),
//             child: GridView.builder(
//                 itemCount: products.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisSpacing: 20,
//                   crossAxisSpacing: 20,
//                   childAspectRatio: 0.75,
//                 ),
//                 itemBuilder: (context, index) => (
//                       product: products[index],
//                       press: () => Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => DetailsScreen(
//                               product: products[index],
//                             ),
//                           )),
//                     )),
//           ),
//         ),
//       ],
//     );
//   }
// }




//  one 1

// Widget newbtn(Product count) {
//   return Card(
    
//     color: count.color,
    
//     child: Container(
//       child: Stack(
//         children: [
//           Column(
//             children: [
//               Container(
//                 height: 200,
//                 width: 100,
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }


// two w

// Widget newbtn(Product count) {
//   return Card(
//     child: Container(
//       child: Column(
//         children: [
//           Image(image: AssetImage(count.image)),
//           Text(count.title),
//           ElevatedButton(onPressed: () {}, child: Text("Buy now"))
//         ],
//       ),
//     ),
//   );
// }