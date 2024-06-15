class ProductModel {
  int id, quantity, quantity_sold, promotion, price;
  String img, name, description, brand_name, category_name;


  ProductModel({ 
  required this.id, 
  required this.img,
  required this.name,
  required this.description,
  required this.brand_name,
  required this.category_name,
  required this.quantity_sold, 
  required this.quantity, 
  required this.promotion, 
  required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> data) => ProductModel(
      id: data['product_id'],
      name: data['product_name'],
      img: data['image'],
      description: data['description'] ?? '',
      brand_name: data['brand_name'],
      category_name: data['category_name'],
      quantity: data['quantity'],
      quantity_sold: data['quantity_sold'],
      promotion: data['promotion'],
      price: data['price']
  );
}