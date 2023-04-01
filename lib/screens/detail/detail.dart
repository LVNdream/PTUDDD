import 'package:delivery_fastfood_app/constants/color.dart';
import 'package:delivery_fastfood_app/models/cart_manager.dart';
import 'package:delivery_fastfood_app/models/data_food.dart';
import 'package:delivery_fastfood_app/models/food.dart';
import 'package:delivery_fastfood_app/screens/cart/cart_screen.dart';
import 'package:delivery_fastfood_app/screens/detail/widget/food_detail.dart';
import 'package:delivery_fastfood_app/screens/detail/widget/food_img.dart';
import 'package:delivery_fastfood_app/screens/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/food-detail';
  final Food food;
  DetailScreen(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              food,
              Icons.arrow_back_ios_new_outlined,
              Icons.favorite_outline,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImg(food),
            FoodDetail(food),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shopping_cart,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  context.watch<FoodData>().quantityValueF(food).toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          onPressed: () {
            final cart = context.read<CartManager>();
            cart.addItem(
                food, context.read<FoodData>().quantityValueF(food).toInt());
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: const Text(
                    'Item added to cart',
                  ),
                  duration: const Duration(seconds: 2),
                  action: SnackBarAction(
                    label: 'UNDO',
                    onPressed: () {
                      cart.removeSingleItem(food.id!);
                    },
                  ),
                ),
              );
            context.read<FoodData>().resetQuantityItemF(food);
          },
        ),
      ),
    );
  }
}
