import 'dart:convert';
import 'package:banhangdienmay/common/global.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchBanner() async {
  final res = await http.get(Uri.parse('$BASE_URL_LOCAL/v1/banner'));
  if (res.statusCode == 200) {
    final result = jsonDecode(res.body) as Map<String, dynamic>;
    return result;
  } else {
    throw Exception("Call api failed !");
  }
}

Future<Map<String, dynamic>> fetchCategory() async {
  final res = await http.get(Uri.parse('$BASE_URL_LOCAL/v1/category'));
  if (res.statusCode == 200) {
    final result = jsonDecode(res.body) as Map<String, dynamic>;
    return result;
  } else {
    throw Exception("Call api failed !");
  }
}

Future<Map<String, dynamic>> fetchQuantitySold() async {
  final res = await http.get(Uri.parse('$BASE_URL_LOCAL/v1/product?quantity_sold=$QUANTITY_SOLD'));
  if (res.statusCode == 200) {
    final result = jsonDecode(res.body) as Map<String, dynamic>;
    return result;
  } else {
    throw Exception("Call api failed !");
  }
}