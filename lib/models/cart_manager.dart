import 'dart:collection';

import 'package:delivery_fastfood_app/models/cart_item.dart';

class CartManager {
  final Map<String, CartItem> _items = {
    'id1': CartItem(
      id: 'c1',
      name: 'Soba Soup',
      imageUrl: 'assets/images/dish1.png',
      quantity: 3,
      price: 20,
    ),
    'id2': CartItem(
      id: 'c2',
      name: 'Sai Ua Samun Phrai',
      imageUrl: 'assets/images/dish2.png',
      quantity: 2,
      price: 31.05,
    ),
  };

  int get productCount {
    return _items.length;
  }

  List<CartItem> get products {
    return _items.values.toList();
  }

  Iterable<MapEntry<String, CartItem>> get foodEntries {
    return {..._items}.entries;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }
}
