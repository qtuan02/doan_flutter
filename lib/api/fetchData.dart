import 'package:banhangdienmay/model/bannerModel.dart';
import 'package:banhangdienmay/model/categoryModel.dart';

class Data {
  List<BannerModel> banners = [];
  List<CategoryModel> categories = [];
  static final Data _instance = Data._internal();
  factory Data() {
    return _instance;
  }

  Data._internal();

  static Data getInstance() {
    return _instance;
  }
}
