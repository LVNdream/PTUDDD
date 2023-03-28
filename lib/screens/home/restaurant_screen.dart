import 'package:delivery_fastfood_app/models/data_food.dart';
import 'package:delivery_fastfood_app/models/food.dart';
import 'package:delivery_fastfood_app/models/restaurant.dart';
import 'package:delivery_fastfood_app/screens/home/widget/rating_star.dart';
import 'package:flutter/material.dart';
import 'widget/food_list.dart';
import 'widget/food_list_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;
  const RestaurantScreen(this.restaurant, {super.key});
  // var selected = 0;

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  var selected = 0;
  final pageController = PageController();
  // cay dung ham tra ve danh sach mon an
  // _buildMenuItem(Food menuItem) {
  //   return Center(
  //     child: Stack(
  //       alignment: Alignment.center,
  //       children: <Widget>[
  //         Container(
  //           height: 175,
  //           width: 175,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //                 image: AssetImage(menuItem.imageUrl), fit: BoxFit.cover),
  //             borderRadius: BorderRadius.circular(15),
  //           ),
  //         ),
  //         Container(
  //           height: 175,
  //           width: 175,
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(15),
  //             gradient: LinearGradient(
  //               begin: Alignment.topRight,
  //               end: Alignment.bottomLeft,
  //               colors: [
  //                 Colors.black.withOpacity(0.3),
  //                 Colors.black87.withOpacity(0.3),
  //                 Colors.black54.withOpacity(0.3),
  //                 Colors.black38.withOpacity(0.3),
  //                 Colors.black26.withOpacity(0.3),
  //               ],
  //             ),
  //           ),
  //         ),
  //         Positioned(
  //           bottom: 65,
  //           child: Column(
  //             children: <Widget>[
  //               Text(
  //                 menuItem.name,
  //                 style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 24,
  //                     fontWeight: FontWeight.w400,
  //                     letterSpacing: 1.2),
  //               ),
  //               Text(
  //                 "\$${menuItem.price}",
  //                 style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 20,
  //                     fontWeight: FontWeight.w400,
  //                     letterSpacing: 1.2),
  //               ),
  //             ],
  //           ),
  //         ),
      //     Positioned(
      //       bottom: 15,
      //       right: 15,
      //       child: Container(
      //         decoration: BoxDecoration(
      //           color: Theme.of(context).primaryColor,
      //           borderRadius: BorderRadius.circular(30),
      //         ),
      //         child: IconButton(
      //           icon: Icon(Icons.add),
      //           iconSize: 20,
      //           color: Colors.white,
      //           onPressed: () {},
      //         ),
      //       ),
      //  ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                  tag: widget.restaurant.imageUrl,
                  child: Image(
                    height: 220.0,
                    width: MediaQuery.of(context).size.width,
                    image: AssetImage(widget.restaurant.imageUrl),
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                    IconButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.restaurant.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Distance: ' + widget.restaurant.distance,
                      style: TextStyle(
                        color: Color.fromARGB(250, 0, 68, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                RatingStars(widget.restaurant.rating),
                SizedBox(height: 6.0),
                Text(
                  widget.restaurant.address,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: <Widget>[
          //     TextButton(
          //       onPressed: () {},
          //       style: TextButton.styleFrom(
          //         padding: EdgeInsets.symmetric(horizontal: 30.0),
          //         textStyle: TextStyle(
          //           color: Theme.of(context).primaryColor,
          //         ),
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(10)),
          //       ),
          //       child: Text(
          //         'Reviews',
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 20,
          //         ),
          //       ),
          //     ),
          //     TextButton(
          //       onPressed: () {},
          //       style: TextButton.styleFrom(
          //         padding: EdgeInsets.symmetric(horizontal: 30.0),
          //         textStyle: TextStyle(
          //           color: Theme.of(context).primaryColor,
          //         ),
          //         shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(10)),
          //       ),
          //       child: Text(
          //         'Contact',
          //         style: TextStyle(color: Colors.black, fontSize: 20),
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(
          //   height: 5,
          // ),
          // Container(
          //   child: Center(
          //     child: Text(
          //       'Menu',
          //       style: TextStyle(
          //         fontSize: 22,
          //         fontWeight: FontWeight.w500,
          //         letterSpacing: 1.2,
          //       ),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 5,
          // ),
          Container(
              // child: GridView.count(
              //   crossAxisCount: 2,
              //   children: List.generate(
              //     widget.restaurant.menu.length,
              //     (index) {
              //       Food food = widget.restaurant.menu[index];
              //       return _buildMenuItem(food);
              //     },
              //   ),
              // ),
              child: FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, widget.restaurant)),
          Expanded(
            child: FoodListView(selected, (int index) {
              setState(
                () {
                  selected = index;
                },
              );
            }, pageController, widget.restaurant),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            height: 60,
            child: SmoothPageIndicator(
              controller: pageController,
              count: widget.restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: Colors.orange.shade400,
                    borderRadius: BorderRadius.circular(10),
                    dotBorder: DotBorder(
                        color: Colors.orange.shade400, padding: 2, width: 2)),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange.shade400,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
