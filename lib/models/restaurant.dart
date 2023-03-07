import 'food.dart';
class Restaurant{
  final String imageUrl;
  final String name;
  final String address;
  final String distance;
  final int  rating;
  final String desc;
  final  Map<String, List<Food>> menu;

Restaurant(this.imageUrl,this.name,this.address,this.distance,this.rating,this.menu,this.desc);

}