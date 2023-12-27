class Product {
  final String imageUrl;
  final String title;
  final int price;
  late final bool isFavorite; // Assuming a boolean flag for favorite state

  Product({
    required this.imageUrl,
    required this.title,
    required this.price,
    this.isFavorite = false,
  });
}
