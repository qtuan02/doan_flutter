class ProductModel {
  int id, quantity, quantity_sold, promotion, price;
  String img, name;


  ProductModel({ required this.id, required this.img ,required this.name,
    required this.quantity_sold, required this.quantity, required this.promotion, required this.price });

  factory ProductModel.fromJson(Map<String, dynamic> data) => ProductModel(
      id: data['product_id'],
      name: data['product_name'],
      img: data['image'],
      quantity: data['quantity'],
      quantity_sold: data['quantity_sold'],
      promotion: data['promotion'],
      price: data['price']
  );
}