import 'cart_item.dart';
class OrderItem{
  final String? id;
  final double amount;
  final List<CartItem> foods;
  final DateTime dateTime;

  int get productCount{
    return foods.length;
  }

  OrderItem({
    this.id,
    required this.amount,
    required this.foods,
    DateTime? dateTime,
  }):dateTime = dateTime ?? DateTime.now();

  OrderItem copyWith ({
    String ?id,
    double ? amount,
    List<CartItem>? foods,
    DateTime? dateTime,
  }){
    return OrderItem(
      id:id??this.id,
      amount:amount??this.amount,
      foods:foods??this.foods,
      dateTime:dateTime??this.dateTime,
      );
  }

}