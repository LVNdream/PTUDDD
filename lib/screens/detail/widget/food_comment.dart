// import 'dart:convert';

// import 'package:delivery_fastfood_app/models/food.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// // import 'order_item_card.dart';
// // import 'order_manager.dart';
// // import '../products/product_overview_screen.dart';
// // import '../shared/app_drawer.dart';
// //

// class FoodComment extends StatelessWidget {
//   final Food food;
//   FoodComment(this.food);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       // padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
//       height: 250,
//       child: ListView.separated(
//           scrollDirection: Axis.vertical,
//           itemBuilder: (context, index) => Container(
//                 padding: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(40),
//                 ),
//                 child: Column(
//                   children: [
//                     Text(food.comments[index].values.elementAt(1) +
//                         ': ' +
//                         food.comments[index].values.elementAt(2) +
//                         '   ' +
//                         food.comments[index].values.elementAt(3) +
//                         '⭐'),
//                   ],
//                 ),
//               ),
//           separatorBuilder: (_, index) => SizedBox(
//                 width: 5,
//               ),
//           itemCount: food.comments.length),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'order_item_card.dart';
// // import 'order_manager.dart';
// // // import '../products/product_overview_screen.dart';
// // import '../shared/app_drawer.dart';

// // class OrdersScreen extends StatelessWidget {
// //   static const routeName = '/orders';
// //   const OrdersScreen({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     print('building orders!!');
// //     // final ordersManager = OrdersManager();
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Your Order'),
// //         // actions: <Widget>[buildProductFilterMenu(), buildShoppingCartIcon()],
// //       ),
// //       drawer: const AppDrawer(),
// //       body: Consumer<OrdersManager>(
// //         builder: (ctx, ordersManager, child) {
// //           return ListView.builder(
// //             itemCount: ordersManager.orderCount,
// //             itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
