import 'package:delivery_fastfood_app/models/food.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final Food food;
  FoodItem(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
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
            // child: Container(
            //   width: 110,
            //   height: 110,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(50),
            //       image: DecorationImage(
            //         image: AssetImage(
            //           food.imageUrl,
            //         ),
            //       )),
            // ),
            child: Image.asset(
              food.imageUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            // child: Text(food.name),
            child: Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(food.name),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'food.name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 15,
                        ),
                      ),
                      Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
