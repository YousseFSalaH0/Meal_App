// Enum to arange the complexity
enum Complexity {
  Simple,
  Challenging,
  Hard,
}
// Enum to arange the affordability
enum Affordability { Pricey, Luxurious, Affordable }

// Meal class with its parameters
class Meal {
  final String id;
  final String title;
  final String imageUrl;

  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final isVegan;
  final isVegetarian;
  final isGlutenFree;
  final isLactoseFree;
// meal constructor
  const Meal(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.categories,
      required this.ingredients,
      required this.steps,
      required this.duration,
      required this.complexity,
      required this.affordability,
      required this.isVegan,
      required this.isVegetarian,
      required this.isGlutenFree,
      required this.isLactoseFree});
}
