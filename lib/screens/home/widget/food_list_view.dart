import 'package:delivery_fastfood_app/models/restaurant.dart';
import 'package:delivery_fastfood_app/screens/detail/detail.dart';
import 'package:flutter/material.dart';
import '../widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController;
  final Restaurant restaurant;
  FoodListView(
      this.selected, this.callback, this.PageController, this.restaurant);
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: PageController,
        onPageChanged: (index) => callback(index),
        children: category
            .map((e) => ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailPage(
                              restaurant.menu[category[selected]]![index])));
                    },
                    child:
                        FoodItem(restaurant.menu[category[selected]]![index]),
                  ),
                  separatorBuilder: (_, index) => SizedBox(height: 15),
                  itemCount: restaurant.menu[category[selected]]!.length,
                ))
            .toList(),
      ),
    );
  }
}
