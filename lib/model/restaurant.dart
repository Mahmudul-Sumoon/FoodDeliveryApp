import 'food.dart';

class Restaurant {
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List<Food> menu;

  Restaurant(
      {required this.address,
      required this.imageUrl,
      required this.name,
      required this.rating,
      required this.menu});
}
