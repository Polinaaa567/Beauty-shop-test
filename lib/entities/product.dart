class Product {
  final String type;
  final String title;
  final String price;
  final String? stock;
  final String assetUrl;

  Product({
    required this.type,
    required this.title,
    required this.price,
    required this.assetUrl,
    this.stock,
  });
}
