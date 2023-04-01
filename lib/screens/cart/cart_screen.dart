import 'package:delivery_fastfood_app/constants/color.dart';
import 'package:delivery_fastfood_app/models/order_item_manager.dart';
import 'package:delivery_fastfood_app/screens/order/order_screen.dart';
import 'package:delivery_fastfood_app/shared/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart/widget/cart_item_card.dart';
import '../../models/cart_manager.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/cart';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartManager>();
    // final cart = CartManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: Column(
        children: <Widget>[
          buildCartSummary(cart, context),
          const SizedBox(height: 10),
          Expanded(
            child: buildCartDetails(cart),
          )
        ],
      ),
    );
  }

  Widget buildCartDetails(CartManager cart) {
    return ListView(
        children: cart.foodEntries
            .map(
              (entry) => CartItemCard(foodId: entry.key, cardItem: entry.value),
            )
            .toList());
  }

  Widget buildCartSummary(CartManager cart, BuildContext context) {
    return Card(
      // margin: const EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Total Payment',
                style: TextStyle(fontSize: 20),
              ),
              const Spacer(),
              Chip(
                label: Text(
                  '\$${cart.totalAmount.toStringAsFixed(2)}',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
                backgroundColor: kPrimaryColor,
              ),
              TextButton(
                // onPressed: () {
                //   print('An order has been add!');
                // },
                onPressed: cart.totalAmount <= 0
                    ? null
                    : () {
                        context.read<OrdersManager>().addOrder(
                              cart.foods,
                              cart.totalAmount,
                            );
                        cart.clear();
                      },
                style: TextButton.styleFrom(
                  textStyle: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w500),
                ),
                child: const Text('PRESS TO ORDER'),
              )
            ]),
      ),
    );
  }
}
