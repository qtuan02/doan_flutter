class CategoryModel {
  int id;
  String name;
  String img;

  CategoryModel({ required this.id, required this.name ,required this.img });

  factory CategoryModel.fromJson(Map<String, dynamic> data) => CategoryModel(
      id: data['category_id'],
      name: data['category_name'],
      img: data['category_image']
  );
}