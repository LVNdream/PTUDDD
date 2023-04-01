import 'package:delivery_fastfood_app/models/cart_manager.dart';
import 'package:delivery_fastfood_app/models/data_food.dart';
import 'package:delivery_fastfood_app/models/order_item_manager.dart';
import 'package:delivery_fastfood_app/screens/cart/cart_screen.dart';
import 'package:delivery_fastfood_app/screens/favorite/favorite_screen.dart';
import 'package:delivery_fastfood_app/screens/home/home_screen.dart';
import 'package:delivery_fastfood_app/screens/order/order_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import './screens/auth/auth_screen.dart';
import './screens/auth/auth_manager.dart';
import './screens/splash_screen.dart';
// import 'dart:async';

Future<void> main() async {
  await dotenv.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (ctx) => AuthManager(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => FoodData(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => CartManager(),
          ),
          ChangeNotifierProvider(
            create: (ctx) => OrdersManager(),
          ),
        ],
        child: Consumer<AuthManager>(
          builder: (ctx, authManager, child) {
            return MaterialApp(
              title: 'Flutter DeliveryFastFood',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: Color(0xFFF5F5F5),
                primarySwatch: Colors.deepOrange,
              ),
              home: authManager.isAuth
                  ? HomeScreen()
                  : FutureBuilder(
                      future: authManager.tryAutoLogin(),
                      builder: (ctx, snapshot) {
                        return snapshot.connectionState ==
                                ConnectionState.waiting
                            ? const SplashScreen()
                            : const AuthScreen();
                      }),
              routes: {
                CartScreen.routeName: (ctx) => const CartScreen(),
                OrdersScreen.routeName: (ctx) => const OrdersScreen(),
                FavoriteScreen.routeName: (ctx) => const FavoriteScreen(),
              },
            );
          },
        ));
  }
}
