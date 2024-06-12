class BannerModel {
  int id;
  String img;

  BannerModel({ required this.id,  required this.img });

  factory BannerModel.fromJson(Map<String, dynamic> data) => BannerModel(
    id: data['banner_id'],
    img: data['banner_image']
  );
}