import '../models/food.dart';
import 'package:delivery_fastfood_app/models/restaurant.dart';
import 'package:delivery_fastfood_app/models/order.dart';
import 'package:delivery_fastfood_app/models/user.dart';

// Food
// danh sach thuc an Recommend
List<Food> generrateRecommendFoods(){
  return[_sobaSoup,_saiua,_ratatouille,_tomatochicken,_burrito,_pancakes];
}

List<Food> generratePopularFoods(){
  return[_pasta,_pizza,_ramen,_salmon,_steak,];
}

final _sobaSoup = Food(
    'assets/images_foreign/images/dish1.png',
    'Soba Soup',
    20,
    'No1. in Sales',
    4.8,
    '325 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

final _saiua = Food(
    'assets/images_foreign/images/dish2.png',
    'Sai Ua Samun Phrai',
    31.05,
    'No1. So delicious',
    4.5,
    '425 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

final _ratatouille = Food(
    'assets/images_foreign/images/dish3.png',
    'Ratatouille Pasta',
    19.77,
    'highly Recommened',
    5.0,
    '565 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

final _tomatochicken = Food(
    'assets/images_foreign/images/dish1.png',
    'Tomato Chicken',
    19.70,
    'Low Fat',
    4.3,
    '634 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');









final _burrito = Food(
    'assets/images/burrito.jpg',
    'Burrito',
    18.99,
    'No1. in Sales',
    4.9,
    '325 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _steak = Food(
    'assets/images/steak.jpg',
    'Steak',
    15,
    'No1. in Sales',
    4.5,
    '325 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _pasta = Food(
    'assets/images/pasta.jpg',
    'Pasta',
    24.22,
    'No1. in Sales',
    4.3,
    '329 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _ramen = Food(
    'assets/images/ramen.jpg',
    'Ramen',
    25.79,
    'No1. in Sales',
    4.0,
    '457 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _pancakes = Food(
    'assets/images/pancakes.jpg',
    'Pancakes',
    8.99,
    'No1. in Sales',
    4.7,
    '125 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _pizza = Food(
    'assets/images/pizza.jpg',
    'Pizza',
    23.9,
    'No1. in Sales',
    4.6,
    '241 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _salmon = Food(
    'assets/images/salmon.jpg',
    'Salmon',
    10.99,
    'No1. in Sales',
    4.9,
    '365 kcal',
    1,
    [
      {'Noodle': 'assets/images_foreign/images/ingre1.png'},
      {'Shrimp': 'assets/images_foreign/images/ingre2.png'},
      {'Egg': 'assets/images_foreign/images/ingre3.png'},
      {'Scallion': 'assets/images_foreign/images/ingre4.png'},
    ],
    'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

//Restaurant
final _restaurant0 = Restaurant(
    'assets/images/restaurant0.jpg',
    'Đông Á',
    '123,Xuân Khánh, Ninh Kiều, Cần Thơ',
    '5km',
    5,
    // [_burrito, _pancakes, _pasta, _pizza, _ramen, _salmon, _steak]
    {
      'Recommended':generrateRecommendFoods(),
      'Popular':generratePopularFoods(),
      'Beverage':[],
      'Cakewalk':[],
      'Noodles':[],
    },
    'Ỏrigane Sandwitches is delicious');

final _restaurant1 = Restaurant(
    'assets/images/restaurant1.jpg',
    'Quê Hương',
    '123, Lê Lợi, Ninh Kiều, Cần Thơ',
    '3.5km',
    4,
    {
      'Recommended':generrateRecommendFoods(),
      'Popular':generratePopularFoods(),
      'Beverage':[],
      'Cakewalk':[],
      'Noodles':[],
    },
    'Ỏrigane Sandwitches is delicious');

final _restaurant2 = Restaurant(
    'assets/images/restaurant2.jpg',
    'France',
    '123 ,Hùng Vương, Ninh Kiều, Cần Thơ',
    '2km',
    3,
    {
      'Recommended':generrateRecommendFoods(),
      'Popular':generratePopularFoods(),
      'Beverage':[],
      'Cakewalk':[],
      'Noodles':[],
    },
    'Ỏrigane Sandwitches is delicious');

final _restaurant3 = Restaurant(
    'assets/images/restaurant3.jpg',
    'Mũn Mỉm',
    '123,Nguyễn Văn Cừ, Ninh Kiều, Cần Thơ',
    '0.5km',
    4,
    {
      'Recommended':generrateRecommendFoods(),
      'Popular':generratePopularFoods(),
      'Beverage':[],
      'Cakewalk':[],
      'Noodles':[],
    },
    'Ỏrigane Sandwitches is delicious');

final _restaurant4 = Restaurant(
    'assets/images/restaurant4.jpg',
    'Việt Nhựt',
    '123,Võ Văn Kiệt, Ninh Kiều, Cần Thơ',
    '1km',
    5,
    {
      'Recommended':generrateRecommendFoods(),
      'Popular':generratePopularFoods(),
      'Beverage':[],
      'Cakewalk':[],
      'Noodles':[],
    },
    'Ỏrigane Sandwitches is delicious');

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

final currentUser = User('leVietNhut', [
  Order(_restaurant2, _steak, 'Nov 10 2022', 1),
  Order(_restaurant0, _ramen, 'Nov 8 2019', 3),
  Order(_restaurant1, _burrito, 'Nov 5 2002', 2),
  Order(_restaurant3, _salmon, 'Nov 2 2021', 1),
  Order(_restaurant4, _pancakes, 'Nov 1 2020', 1),
], [
  Order(_restaurant2, _pasta, 'March 11 2023', 1),
  Order(_restaurant4, _pancakes, 'March 11 2023', 3),
  Order(_restaurant1, _steak, 'March 11 2023', 6),
  Order(_restaurant0, _ramen, 'March 11 2023', 5),
  Order(_restaurant4, _burrito, 'March 11 2023', 4),
]);
