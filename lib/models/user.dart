import 'recent_order_item.dart';
 
 class User {
  final String name;
  final List<Order> orders;
  final List<Order> cart;

  User(this.name,this.orders,this.cart);
 }