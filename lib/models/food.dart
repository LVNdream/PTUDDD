
class Food {
  final String? id;
  final String imageUrl;
  final String name;
  final double price;
  final bool isFavorite;

  final String desc;
  final num score;
  final String cal;
  final num quantity;
  final List<Map<String,String>> ingredients;
  final String about;
  Food({
    this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
    this.isFavorite = false,
    required this.desc,
    required this.score,
    required this.cal,
    required this.quantity,
    required this.ingredients,
    required this.about
  });

  Food coppyWith({
    String?id,
    String ?imageUrl,
    String ?name,
    double ?price,
    bool ?isFavorite,
    String ?desc,
    num ?score,
    String ?cal,
    num ?quantity,
    List<Map<String,String>> ?ingredients,
    String ?about,
  }){
    return Food(
      id: id ??this.id,
      imageUrl: imageUrl??this.imageUrl,
      name: name??this.name,
      price: price ??this.price,
      desc: desc ??this.desc,
      score: score ?? this.score,
      cal: cal ??this.cal,
      quantity:quantity ?? this.quantity,
      ingredients: ingredients ?? this.ingredients,
      about: about?? this.about);
  }
}
