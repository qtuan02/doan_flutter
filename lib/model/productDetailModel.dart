
class ProductDetailModel {
  int id, quantity, price;
  String img, name, brand_name, category_name, description;


  ProductDetailModel({ 
  required this.id, 
  required this.img,
  required this.name,
  required this.description,
  required this.brand_name,
  required this.category_name,
  required this.quantity, 
  required this.price,
  });

  factory ProductDetailModel.fromJson(Map<String, dynamic> data) => ProductDetailModel(
      id: data['product_id'],
      name: data['product_name'],
      img: data['image'],
      description: data['description'],
      brand_name: data['brand_name'],
      category_name: data['category_name'],
      quantity: data['quantity'],
      price: data['price']
  );
}