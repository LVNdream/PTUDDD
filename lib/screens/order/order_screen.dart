import 'package:flutter/material.dart';
import '../order/widget/order_item.card.dart';
import '../../models/order_item_manager.dart';
// import '../products/product_overview_screen.dart';
// import '../shared/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  static const routeName = '/orders';
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print('building orders!!');
    final ordersManager = OrdersManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
        // actions: <Widget>[buildProductFilterMenu(), buildShoppingCartIcon()],
      ),
      // drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
      ),
    );
  }
}
