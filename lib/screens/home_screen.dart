import 'package:delivery_fastfood_app/models/restaurant.dart';
import 'package:delivery_fastfood_app/screens/cart_screen.dart';
import 'package:delivery_fastfood_app/screens/restaurant_screen.dart';
import 'package:delivery_fastfood_app/widget/rating_star.dart';
import 'package:flutter/material.dart';
import '../widget/recent_order.dart';
import '../models/data.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

// Ham xay dung danh sach cac nha hang
_buildRestaurants(){
  List<Widget> restaurantList = [];
  restaurants.forEach((Restaurant restaurant) {
    restaurantList.add(
      GestureDetector(
        onTap: () => Navigator.push(
           context,
           MaterialPageRoute(
            builder: (_) => RestaurantScreen(restaurant)
            )
        ),
        child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(15),
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Hero(
                tag:restaurant.imageUrl,
                child: Image(
                  image: AssetImage(restaurant.imageUrl),
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                  ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4,),
                    RatingStars(restaurant.rating),
                    Text(
                      restaurant.address,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4,),
                    Text(
                      ' Distance: '+restaurant.distance,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 64, 255),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                ]),
              ))
        ]
        ),
        ),
      )
    );
  });
  return Column(children: restaurantList);
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () {},
        ),
        title: Text('FastFood Delivery'),
        actions: <Widget>[
          TextButton(
              onPressed: () =>Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CartScreen()
                  ),
                ),
              child: Text(
                'Cart(5)',
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ))
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Search Food or Restaurant',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                          width: 0.8, color: Theme.of(context).primaryColor)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(width: 0.8),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {},
                  )
                  ),
            ),
          ),
          RecentOrder(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Nearby Restaurants',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
                ),
                _buildRestaurants()
            ],
          )
        ],
      ),
    );
  }
}
