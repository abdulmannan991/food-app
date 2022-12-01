// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class BodyHi extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 240,
//           child: Stack(
//             children: [
//               ClipPath(
//                 clipper: CustomShape(),
//                 child: Container(
//                   height: 150,
//                   color: Colors.black,
//                 ),
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }

// class CustomShape extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     double height = size.height;
//     double width = size.width;
//     path.lineTo(0, height - 100);
//     path.quadraticBezierTo(width / 2, height, width, height - 100);
//     path.lineTo(width, 0);
//     path.close();
//     return Path();
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
