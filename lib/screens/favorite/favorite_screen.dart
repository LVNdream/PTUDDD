import 'package:delivery_fastfood_app/models/food.dart';
import 'package:delivery_fastfood_app/screens/detail/detail.dart';
import 'package:delivery_fastfood_app/screens/favorite/widget/food_item_favorite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/data_food.dart';

class FavoriteScreen extends StatelessWidget {
  static const routeName = '/myfoodfavorite';
  const FavoriteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final fooddata = FoodData();
    // final foodFavorite = fooddata.favoriteItems;
    final foodFavorite = context
        .select<FoodData, List<Food>>((foodData) => foodData.favoriteItems);
    return Scaffold(
        appBar: AppBar(
          title: const Text('My food favorite'),
        ),
        body: ListView.separated(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailScreen(foodFavorite[index]),
                ),
              );
            },
            child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: FoodItemFavorite(foodFavorite[index])),
          ),
          separatorBuilder: (_, index) => SizedBox(height: 15),
          itemCount: foodFavorite.length,
        ));
  }
}
