class Product {
  final int id;
  final String title;
  final List<String> images;
  final double price;
  final bool isFavourite;

  Product({
    required this.id,
    required this.images,
    this.isFavourite = false,
    required this.title,
    required this.price,
  });
}