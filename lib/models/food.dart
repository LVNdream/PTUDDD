import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Food {
  final String? id;
  final String imageUrl;
  final String name;
  final double price;
  final ValueNotifier<bool> _isFavorite;

  final String desc;
  final num score;
  final String cal;
  final ValueNotifier <num> _isQuantity;
  final List<Map<String, String>> ingredients;
  final String about;
  Food(
      {this.id,
      required this.imageUrl,
      required this.name,
      required this.price,
      isFavorite = false,
      required this.desc,
      required this.score,
      required this.cal,
      quantity = 1,
      required this.ingredients,
      required this.about})
      : _isFavorite = ValueNotifier(isFavorite), _isQuantity = ValueNotifier(quantity);

  set isFavorite(bool newFavorite) {
    _isFavorite.value = newFavorite;
  }

  bool get isFavorite {
    return _isFavorite.value;
  }
  ValueNotifier<bool> get isFavoriteListenable {
    return _isFavorite;
  }
//////////////////////
  void isQuantityAdd() {
    _isQuantity.value++;
  }
  void isQuantityRemove() {
    _isQuantity.value--;
  }
  void isQuantityReset() {
    _isQuantity.value=1;
  }

    num get isQuantity {
    return _isQuantity.value;
  }
  

  Food coppyWith({
    String? id,
    String? imageUrl,
    String? name,
    double? price,
    bool? isFavorite,
    String? desc,
    num? score,
    String? cal,
    num? quantity,
    List<Map<String, String>>? ingredients,
    String? about,
  }) {
    return Food(
        id: id ?? this.id,
        imageUrl: imageUrl ?? this.imageUrl,
        name: name ?? this.name,
        price: price ?? this.price,
        desc: desc ?? this.desc,
        score: score ?? this.score,
        cal: cal ?? this.cal,
        // quantity: quantity ?? this.quantity,
        ingredients: ingredients ?? this.ingredients,
        about: about ?? this.about);
  }
}
