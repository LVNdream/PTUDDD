import 'package:delivery_fastfood_app/models/food.dart';
import 'package:flutter/foundation.dart';

import 'package:delivery_fastfood_app/models/cart_item.dart';
import 'package:flutter/material.dart';

class CartManager with ChangeNotifier {
  Map<String, CartItem> _items = {
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

  int get foodCount {
    return _items.length;
  }

  List<CartItem> get foods {
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

//  thme de add to cart
  void addItem(Food food,int quantityItem) {
    if (_items.containsKey(food.id)) {
      //change quantity...
      // _items.update(
      //   food.id!,
      //   (existingCartItem) => existingCartItem.copyWith(
      //     quantity: existingCartItem.quantity + 1,
      //   ),
      // );
      print('da ton tai');
    } else {
      _items.putIfAbsent(
        food.id!,
        () => CartItem(
            id: 'c${DateTime.now().toIso8601String()}',
            name: food.name,
            imageUrl: food.imageUrl,
            quantity: quantityItem,
            price: food.price),
      );
    }
    notifyListeners();
  }

  // Hàm xóa Items khỏi cart
  void removeItem(String foodId) {
    _items.remove(foodId);
    notifyListeners();
  }

  void removeSingleItem(String foodId) {
    if (!_items.containsKey(foodId)) {
      return;
    }
    if (_items[foodId]?.quantity as num > 1) {
      _items.update(
        foodId,
        (existingCartItem) =>
            existingCartItem.copyWith(quantity: existingCartItem.quantity - 1),
      );
    } else {
      _items.remove(foodId);
    }
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
