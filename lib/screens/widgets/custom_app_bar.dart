import 'package:delivery_fastfood_app/models/food.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Food food;
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallback;
  CustomAppBar(this.food, this.leftIcon, this.rightIcon, {this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: leftCallback != null ? () => leftCallback!() : null,
          child: _builIcon(leftIcon),
        ),
        _builIconFavorite()
      ]),
    );
  }

  Widget _builIcon(IconData icon) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(icon),
    );
  }

  Widget _builIconFavorite() {
    return Container(
      width: 55,
      height: 55,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
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

      // IconButton(
      //   icon: Icon(
      //     food.isFavorite ? Icons.favorite : Icons.favorite_border,
      //   ),
      //   color: Colors.red,
      //   onPressed: () {},
      // ),
    );
  }
}
