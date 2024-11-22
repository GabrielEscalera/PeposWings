// food item
class Food {
  final String name;                //cheese wing
  final String description;         //a wing full of cheese 
  final String imagePath;           //lib/images/cheese_burger.png
  final double price;               //90.00
  final FoodCategory category;      //wing
  List<Addon> availableAddons;      // [ extra cheese, sauce, extra patty]

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategory {
  chiken,
  hamburguesas,
  entradas,
  tacos,
  bebidas,
}

// foods addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}