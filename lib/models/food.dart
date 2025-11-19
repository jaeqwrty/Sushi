class Food {
  String name;
  String imagePath;
  String price;
  String rating;

  Food({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.rating,
  });

  String get getName => name;
  String get getImagePath => imagePath;
  String get getPrice => price;
  String get getRating => rating;
}
