import 'package:delivery_fastfood_app/models/cart_manager.dart';
import 'package:delivery_fastfood_app/models/data_food.dart';
import 'package:delivery_fastfood_app/screens/cart/cart_screen.dart';
import 'package:delivery_fastfood_app/screens/favorite/favorite_screen.dart';
import 'package:delivery_fastfood_app/screens/home/home_screen.dart';
import 'package:delivery_fastfood_app/screens/order/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => FoodData(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => CartManager(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter DeliveryFastFood',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFF5F5F5),
          primarySwatch: Colors.deepOrange,
        ),
        home: HomeScreen(),
        routes: {
          CartScreen.routeName: (ctx) => const CartScreen(),
          OrdersScreen.routeName: (ctx) => const OrdersScreen(),
          FavoriteScreen.routeName: (ctx) => const FavoriteScreen(),
        },
      ),
    );
  }
}
