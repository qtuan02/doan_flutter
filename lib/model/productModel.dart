class ProductModel {
  int id, quantity, promotion, price;
  String img, name;


  ProductModel({ required this.id, required this.img ,required this.name,
    required this.quantity, required this.promotion, required this.price });

  factory ProductModel.fromJson(Map<String, dynamic> data) => ProductModel(
      id: data['product_id'],
      name: data['product_name'],
      img: data['image'],
      quantity: data['quantity'],
      promotion: data['promotion'],
      price: data['price']
  );
}