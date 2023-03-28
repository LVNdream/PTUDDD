import '../models/food.dart';
import 'package:delivery_fastfood_app/models/restaurant.dart';
import 'package:delivery_fastfood_app/models/recent_order_item.dart';
import 'package:delivery_fastfood_app/models/user.dart';

// Food
// danh sach thuc an Recommend
List<Food> generrateRecommendFoods() {
  return [_sobaSoup, _saiua, _ratatouille, _tomatochicken, _burrito, _pancakes];
}

List<Food> generratePopularFoods() {
  return [
    _pasta,
    _pizza,
    _ramen,
    _salmon,
    _steak,
  ];
}

final _sobaSoup = Food(
    id: 'p1',
    imageUrl: 'assets/images/dish1.png',
    name: 'Soba Soup',
    price: 20,
    isFavorite: true,
    desc: 'No1. in Sales',
    score: 4.8,
    cal: '325 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

final _saiua = Food(
    id: 'p2',
    imageUrl: 'assets/images/dish2.png',
    name: 'Sai Ua Samun Phrai',
    price: 31.05,
    isFavorite: true,
    desc: 'No1. So delicious',
    score: 4.5,
    cal: '425 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

final _ratatouille = Food(
    id: 'p3',
    imageUrl: 'assets/images/dish3.png',
    name: 'Ratatouille Pasta',
    price: 19.77,
    isFavorite: false,
    desc: 'Highly Recommened',
    score: 5.0,
    cal: '565 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

final _tomatochicken = Food(
    id: 'p4',
    imageUrl: 'assets/images/dish1.png',
    name: 'Tomato Chicken',
    price: 19.70,
    isFavorite: false,
    desc: 'Low Fat',
    score: 4.3,
    cal: '634 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

final _burrito = Food(
    id: 'p5',
    imageUrl: 'assets/images/burrito.jpg',
    name: 'Burrito',
    price: 18.99,
    isFavorite: true,
    desc: 'No1. in Sales',
    score: 4.9,
    cal: '325 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _steak = Food(
    id: 'p6',
    imageUrl: 'assets/images/steak.jpg',
    name: 'Steak',
    price: 15,
    isFavorite: true,
    desc: 'No1. in Sales',
    score: 4.5,
    cal: '325 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _pasta = Food(
    id: 'p7',
    imageUrl: 'assets/images/pasta.jpg',
    name: 'Pasta',
    price: 24.22,
    isFavorite: false,
    desc: 'No1. in Sales',
    score: 4.3,
    cal: '329 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _ramen = Food(
    id: 'p8',
    imageUrl: 'assets/images/ramen.jpg',
    name: 'Ramen',
    price: 25.79,
    isFavorite: true,
    desc: 'No1. in Sales',
    score: 4.0,
    cal: '457 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _pancakes = Food(
    id: 'p9',
    imageUrl: 'assets/images/pancakes.jpg',
    name: 'Pancakes',
    price: 8.99,
    isFavorite: false,
    desc: 'No1. in Sales',
    score: 4.7,
    cal: '125 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _pizza = Food(
    id: 'p10',
    imageUrl: 'assets/images/pizza.jpg',
    name: 'Pizza',
    price: 23.9,
    isFavorite: true,
    desc: 'No1. in Sales',
    score: 4.6,
    cal: '241 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');
final _salmon = Food(
    id: 'p11',
    imageUrl: 'assets/images/salmon.jpg',
    name: 'Salmon',
    price: 10.99,
    isFavorite: false,
    desc: 'No1. in Sales',
    score: 4.9,
    cal: '365 kcal',
    quantity: 1,
    ingredients: [
      {'Noodle': 'assets/images/ingre1.png'},
      {'Shrimp': 'assets/images/ingre2.png'},
      {'Egg': 'assets/images/ingre3.png'},
      {'Scallion': 'assets/images/ingre4.png'},
    ],
    about:
        'A bowl of soba is a beautiful, exotic and delicious centerpiece for a Japanese meal: the not-too-soft, nutty buckwheat noodles sitting in a mahogany broth — dashi — that’s as clear and glossy as beef consommé, not only salty and umami-complex but sweet as well. My favorite variety, tamago toji, is egg-topped. When it’s made right, the egg is almost foamy, soft-scrambled and tender, deliciously flavored by the dashi, a bit of which it absorbs.');

//Restaurant
final _restaurant0 = Restaurant(
    'assets/images/restaurant0.jpg',
    'Đông Á',
    '123,Xuân Khánh, Ninh Kiều, Cần Thơ',
    '5km',
    2,
    // [_burrito, _pancakes, _pasta, _pizza, _ramen, _salmon, _steak]
    {
      'Recommended': generrateRecommendFoods(),
      'Popular': generratePopularFoods(),
      'Beverage': [],
      'Cakewalk': [],
      'Noodles': [],
    },
    'Ỏrigane Sandwitches is delicious');

final _restaurant1 = Restaurant(
    'assets/images/restaurant1.jpg',
    'Quê Hương',
    '123, Lê Lợi, Ninh Kiều, Cần Thơ',
    '3.5km',
    4,
    {
      'Recommended': generrateRecommendFoods(),
      'Popular': generratePopularFoods(),
      'Beverage': [],
      'Cakewalk': [],
      'Noodles': [],
    },
    'Ỏrigane Sandwitches is delicious');

final _restaurant2 = Restaurant(
    'assets/images/restaurant2.jpg',
    'France',
    '123 ,Hùng Vương, Ninh Kiều, Cần Thơ',
    '2km',
    3,
    {
      'Recommended': generrateRecommendFoods(),
      'Popular': generratePopularFoods(),
      'Beverage': [],
      'Cakewalk': [],
      'Noodles': [],
    },
    'Ỏrigane Sandwitches is delicious');

final _restaurant3 = Restaurant(
    'assets/images/restaurant3.jpg',
    'Mũn Mỉm',
    '123,Nguyễn Văn Cừ, Ninh Kiều, Cần Thơ',
    '0.5km',
    5,
    {
      'Recommended': generrateRecommendFoods(),
      'Popular': generratePopularFoods(),
      'Beverage': [],
      'Cakewalk': [],
      'Noodles': [],
    },
    'Ỏrigane Sandwitches is delicious');

final _restaurant4 = Restaurant(
    'assets/images/restaurant4.jpg',
    'Việt Nhựt',
    '123,Võ Văn Kiệt, Ninh Kiều, Cần Thơ',
    '1km',
    3,
    {
      'Recommended': generrateRecommendFoods(),
      'Popular': generratePopularFoods(),
      'Beverage': [],
      'Cakewalk': [],
      'Noodles': [],
    },
    'Ỏrigane Sandwitches is delicious');

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

final currentUser = User('VietNhut', [
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
// int get itemCount{
//   return generratePopularFoods().length+generrateRecommendFoods().length;
// }
