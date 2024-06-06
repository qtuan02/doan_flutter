class Product{
  final String product_id;
  final String image;
  final String product_name;
  final String price;
  final String description;
  final String quantity;
  final String promotion;
  final String quantity_sold;
  final String status;
  final String brand_name;
  final String category_name;


  Product({required this.product_id, 
  required this.image, 
  required this.product_name, 
  required this.price,
  required this.description,
  required this.quantity,
  required this.promotion,
  required this.quantity_sold,
  required this.status,
  required this.brand_name,
  required this.category_name,});

  factory Product.fromJson(Map<String, dynamic> json){
    return Product(
      product_id: json["product_id"],
      image: json["image"],
      product_name: json["product_name"],
      price: json["price"],
      description: json["description"],
      quantity: json["quantity"],
      promotion: json["promotion"],
      quantity_sold: json["quantity_sold"],
      status: json["status"],
      brand_name: json["brand_name"],
      category_name: json["category_name"],
    );
  }
}