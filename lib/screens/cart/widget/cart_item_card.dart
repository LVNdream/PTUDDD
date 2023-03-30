import 'package:delivery_fastfood_app/models/cart_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/cart_item.dart';
import '../../../shared/dialog_utils.dart';

class CartItemCard extends StatelessWidget {
  final String foodId;
  final CartItem cardItem;
  const CartItemCard({required this.foodId, required this.cardItem, super.key});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(cardItem.id),
      background: Container(
        color: Theme.of(context).colorScheme.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
      ),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showConfirmDialog(
            context, 'Do you want to remove the item from the cart ???');
      },
      onDismissed: (direction) {
        context.read<CartManager>().removeItem(foodId);
      },
      child: buildItemCart(),
    );
  }

  Widget buildItemCart() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 200,
      child: Row(
        children: <Widget>[
          Container(
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(cardItem.imageUrl), fit: BoxFit.cover),
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
                    cardItem.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(width: 0.8, color: Colors.black54)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          cardItem.quantity.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'x',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '\$' + cardItem.price.toString(),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    '\$' +
                        ((cardItem.quantity * cardItem.price)
                                .toStringAsFixed(2))
                            .toString(),
                    style: TextStyle(
                        fontSize: 22.0,
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
    // return Card(
    //   margin: const EdgeInsets.symmetric(
    //     horizontal: 15,
    //     vertical: 4,
    //   ),
    //   child: Padding(
    //     padding: const EdgeInsets.all(8),
    //     child: ListTile(
    //       leading: CircleAvatar(
    //         child: Image.asset(cardItem.imageUrl),
    //       ),
    //       title: Text(cardItem.name),
    //       subtitle: Text('Total: \$${(cardItem.price * cardItem.quantity)}'),
    //       trailing: Text('${cardItem.quantity} x'),
    //     ),
    //   ),
    // );
  }
}
