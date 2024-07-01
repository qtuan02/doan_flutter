import 'dart:convert';

import 'package:banhangdienmay/common/global.dart';
import 'package:banhangdienmay/view/product/ProductDetails.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategorySearchScreen extends StatefulWidget {
  const CategorySearchScreen({super.key});

  @override
  _CategorySearchScreenState createState() => _CategorySearchScreenState();
}

class _CategorySearchScreenState extends State<CategorySearchScreen> {
  late String _searchTerm = '';
  List<dynamic> _searchResults = [];

  void _onSearchTextChanged(String value) {
    setState(() {
      _searchTerm = value;
    });

    _performSearch();
  }

  Future<void> _performSearch() async {
    var response = await http.get(Uri.parse('$BASE_URL_LOCAL/v1/product?category_name=$_searchTerm'));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      setState(() {
        _searchResults = jsonData['data']; 
      });
    } else {
      print('Failed to load data: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFE0000),
        title: TextField(
          decoration: const InputDecoration(
            hintText: 'Tìm kiếm theo danh mục...',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
          ),
          onChanged: _onSearchTextChanged,
        ),
      ),
      body: _searchResults.isNotEmpty
          ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 0.7,
              ),
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    final product = _searchResults[index];
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProductDetails(product: product)),
                    );
                  },
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _searchResults[index]['image'] != null
                            ? Image.network(
                                _searchResults[index]['image'],
                                width: double.infinity,
                                height: 150,
                                fit: BoxFit.cover,
                              )
                            : const SizedBox.shrink(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _searchResults[index]['product_name'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 14.0),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Category: ',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    _searchResults[index]['category_name'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Brand: ',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    _searchResults[index]['brand_name'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontSize: 12.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          : Center(
              child: Text('Không tìm thấy kết quả cho danh mục: $_searchTerm'),
            ),
    );
  }
}
