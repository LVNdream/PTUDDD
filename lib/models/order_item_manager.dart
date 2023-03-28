// import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../models/cart_item.dart';
import '../models/order_item.dart';

class OrdersManager with ChangeNotifier {
  // Ding nghia cac phuong thuc them mot dat hang moi

  // void addOrder(List<CartItem> cartProducts, double total) async {
  //   _orders.insert(
  //     0,
  //     OrderItem(
  //       amount: total,
  //       products: cartProducts,
  //       dateTime: DateTime.now(),
  //     ),
  //   );
  //   notifyListeners();
  // }

  final List<OrderItem> _orders = [
    OrderItem(
      id: 'o1',
      amount: 199.98,
      foods: [
        CartItem(
          id: 'c1',
          name: 'Soba Soup',
          imageUrl: 'assets/images/dish1.png',
          quantity: 3,
          price: 20,
        ),
        CartItem(
          id: 'c2',
          name: 'Sai Ua Samun Phrai',
          imageUrl: 'assets/images/dish2.png',
          quantity: 2,
          price: 31.05,
        ),
      ],
      dateTime: DateTime.now(),
    )
  ];

  int get orderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }
}
