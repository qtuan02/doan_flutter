import 'dart:convert';
import 'package:banhangdienmay/common/global.dart';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchBanner() async {
  final res = await http.get(Uri.parse('$BASE_URL_LOCAL/v1/banner'));
  if (res.statusCode == 200) {
    final result = jsonDecode(res.body) as Map<String, dynamic>;
    return result;
  } else {
    throw Exception("Call api falied !");
  }
}