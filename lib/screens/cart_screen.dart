import 'package:flutter/material.dart';
import '../models/data.dart';
import '../models/order.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
// Xay dung ham lay ra san pham trong cart
  _buildCartItem(Order order) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      child: Row(
        children: <Widget>[
          Container(
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(order.food.imageUrl), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(40)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    order.food.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Nhà hàng ' + order.restaurant.name,
                    style: TextStyle(
                      color: Color.fromARGB(255, 78, 130, 220),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border:
                              Border.all(width: 0.8, color: Colors.black54)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              '-',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 8),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            order.quantiy.toString(),
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              '+',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 0, 8),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 10),
                  Text(
                    '\$' +
                        ((order.quantiy * order.food.price).toStringAsFixed(2))
                            .toString(),
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 255, 0, 0)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double totalprice = 0;
    currentUser.cart.forEach(
        (Order order) => totalprice += order.quantiy * order.food.price);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart(${currentUser.cart.length + 1})'),
      ),
      body: ListView.separated(
        itemBuilder: (context, int index) {
          if (index < currentUser.cart.length) {
            Order order = currentUser.cart[index];
            return _buildCartItem(order);
          }
          return Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Estimated Delivery Time: ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '25 minutes',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total Cost: ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '\$${totalprice.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 17, 0)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 35,
                  width: 400,
                  color: Colors.orange,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.payment_outlined),
                    iconSize: 25,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, int index) {
          return Divider(
            height: 1,
            color: Colors.grey,
          );
        },
        itemCount: currentUser.cart.length + 1,
      ),
    );
  }
}
