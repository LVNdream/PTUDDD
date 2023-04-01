import 'package:delivery_fastfood_app/models/cart_manager.dart';
import 'package:delivery_fastfood_app/models/data_food.dart';
import 'package:delivery_fastfood_app/models/food.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodItemFavorite extends StatelessWidget {
  final Food food;
  FoodItemFavorite(this.food);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 130,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: 110,
                height: 110,
                child: Image.asset(
                  food.imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            food.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // IconButton(
                          //   icon: Icon(
                          //     food.isFavorite
                          //         ? Icons.favorite
                          //         : Icons.favorite_border,
                          //   ),
                          //   color: Colors.red,
                          //   iconSize: 16,
                          //   onPressed: () {
                          //     print('Thay doi yeu thich');
                          //   },
                          // ),
                        ],
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        food.desc,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.amber.shade900,
                            height: 1.5),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '\$',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${food.price}',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 35,
                            width: 125,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 239, 239),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            // color: Color.fromARGB(255, 249, 249, 249),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    context
                                        .read<FoodData>()
                                        .decreaseItemF(food);
                                  },
                                  icon: Icon(Icons.remove),
                                  iconSize: 17,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 242, 108, 60),
                                  ),
                                  child: Text(
                                    context
                                        .watch<FoodData>()
                                        .quantityValueF(food)
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    context
                                        .read<FoodData>()
                                        .increaseItemF(food);
                                  },
                                  icon: Icon(Icons.add),
                                  iconSize: 17,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 12,
          right: 15,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              iconSize: 20,
              color: Colors.white,
              onPressed: () {
                // final cart = context.read<CartManager>();
                // cart.addItem(food);
                // ScaffoldMessenger.of(context)
                //   ..hideCurrentSnackBar()
                //   ..showSnackBar(
                //     SnackBar(
                //       content: const Text(
                //         'Item added to cart',
                //       ),
                //       duration: const Duration(seconds: 2),
                //       action: SnackBarAction(
                //         label: 'UNDO',
                //         onPressed: () {
                //           cart.removeSingleItem(food.id!);
                //         },
                //       ),
                //     ),
                //   );
                final cart = context.read<CartManager>();
                cart.addItem(food,
                    context.read<FoodData>().quantityValueF(food).toInt());
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
        ),
        Positioned(
          top: 12,
          right: 15,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 228, 228, 228),
              borderRadius: BorderRadius.circular(30),
            ),
            child: ValueListenableBuilder<bool>(
              valueListenable: food.isFavoriteListenable,
              builder: (context, isfavorite, child) {
                return IconButton(
                  icon: Icon(
                    food.isFavorite ? Icons.favorite : Icons.favorite_border,
                  ),
                  color: Colors.red,
                  onPressed: () {
                    // print('Thay doi yeu thich');
                    food.isFavorite = !isfavorite;
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
