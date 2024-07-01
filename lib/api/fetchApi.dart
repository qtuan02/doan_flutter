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

Future<Map<String, dynamic>> fetchAllProduct() async {
  final res = await http.get(Uri.parse('$BASE_URL_LOCAL/v1/product'));
  if (res.statusCode == 200) {
    final result = jsonDecode(res.body) as Map<String, dynamic>;
    return result;
  } else {
    throw Exception("Call api failed !");
  }
}

Future<Map<String, dynamic>> fetchProductDetail(int product_id) async {
  final res = await http.get(Uri.parse('$BASE_URL_LOCAL/v1/product/$product_id'));
  if (res.statusCode == 200) {
    final result = jsonDecode(res.body) as Map<String, dynamic>;
    return result;
  } else {
    throw Exception("Call api failed !");
  }
}

// Future<Map<String, dynamic>> fetchProductFavorite() async {
//   final res = await http.get(Uri.parse('$BASE_URL_LOCAL/v2/favorite/'));
//   if (res.statusCode == 200) {
//     final result = jsonDecode(res.body) as Map<String, dynamic>;
//     return result;
//   } else {
//     throw Exception("Call api failed !");
//   }
// }

Future<Map<String, dynamic>> handlerSignIn(String account, String password) async {
  final url = Uri.parse('$BASE_URL_LOCAL/v2/user/login');
  final res = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'account': account,
      'password': password,
    }),
  );
  final result = jsonDecode(res.body) as Map<String, dynamic>;
  return result;
}

Future<Map<String, dynamic>> handlerSignUp(String phone, String email, String password) async {
  final url = Uri.parse('$BASE_URL_LOCAL/v2/user/register');
  final res = await http.post(
    url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'phone': phone,
      'email': email,
      'password': password,
    }),
  );
  final result = jsonDecode(res.body) as Map<String, dynamic>;
  return result;
}