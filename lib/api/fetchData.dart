import 'package:banhangdienmay/model/bannerModel.dart';
import 'package:banhangdienmay/model/categoryModel.dart';
import 'package:banhangdienmay/model/productModel.dart';

class Data {
  List<BannerModel> banners = [];
  List<CategoryModel> categories = [];
  List<ProductModel> productPopular = [];
  List<ProductModel> productFavorite = [];
  List<ProductModel> products = [];
  static final Data _instance = Data._internal();
  factory Data() {
    return _instance;
  }

  Data._internal();

  static Data getInstance() {
    return _instance;
  }
}
