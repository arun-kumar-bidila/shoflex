class Product {
  final String name;
  final String category;
  final double price;
  final List<String> sizes;
  final List<String> colors;
  final String description;
  final String returnCondition;
  final double rating;
  final List<String> images;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.sizes,
    required this.colors,
    required this.description,
    required this.returnCondition,
    required this.rating,
    required this.images,
  });
}