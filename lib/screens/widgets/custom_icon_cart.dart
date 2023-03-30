// import 'package:delivery_fastfood_app/constants/color.dart';
// import 'package:delivery_fastfood_app/models/cart_manager.dart';
// import 'package:delivery_fastfood_app/screens/cart/cart_screen.dart';
// import 'package:flutter/material.dart';

// class CustomIconCart extends StatelessWidget {
//   final CartManager cartManager;
//   const CustomIconCart(this.cartManager,{super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: 100,
//         height: 56,
//         child: RawMaterialButton(
//           fillColor: kPrimaryColor,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(50),
//           ),
//           elevation: 2,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Icon(
//                 Icons.shopping_bag_outlined,
//                 color: Colors.black,
//                 size: 30,
//               ),
//               Container(
//                 padding: EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   shape: BoxShape.circle,
//                 ),
//                 child: Text(
//                   cartManager.foodCount.toString(),
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           ),
//           onPressed: () {
//             Navigator.of(context).pushNamed(CartScreen.routeName);
//           },
//         ),
//       );
//   }
// }


