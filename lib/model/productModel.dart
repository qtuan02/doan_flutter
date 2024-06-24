class ProductModel {
  int id, quantity, quantitySold, promotion, price;
  String img, name, brandName, categoryName, description;

  ProductModel({
    required this.id,
    required this.img,
    required this.name,
    required this.description,
    required this.brandName,
    required this.categoryName,
    required this.quantitySold,
    required this.quantity,
    required this.promotion,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> data) {
    return ProductModel(
      id: data['product_id'],
      name: data['product_name'],
      img: data['image'],
      description: parseDescription(data['description']),
      brandName: data['brand_name'],
      categoryName: data['category_name'],
      quantity: data['quantity'],
      quantitySold: data['quantity_sold'],
      promotion: data['promotion'],
      price: data['price'],
    );
  }

  static String parseDescription(String htmlDescription) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
    return htmlDescription.replaceAll(exp, '');
  }
}