import 'package:banhangdienmay/api/fetchData.dart';
import 'package:banhangdienmay/main.dart';
import 'package:banhangdienmay/model/productModel.dart';
import 'package:banhangdienmay/view/product/ProductDetails.dart';
import 'package:banhangdienmay/widget/BottomNavigationBar.dart';
import 'package:banhangdienmay/widget/ProductItem.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatefulWidget {
  const Product({super.key});
  @override
  ProductPage createState() => ProductPage();
}

class ProductPage extends State<Product> {
  String selectedFilter = 'All'; 
  List<ProductModel> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filterProducts();
  }

  void filterProducts() {
    final products = Data().products;
    final productPop = Data().productPopular;
    switch (selectedFilter) {
      case 'All':
        filteredProducts = products; 
        break;
      case 'Popular':
        filteredProducts = productPop; 
        break;
      case 'Low Price':
        filteredProducts = products.where((product) => product.price <= 20000000).toList();
        filteredProducts.sort((a, b) => a.price.compareTo(b.price));
        break;
      case 'High Price':
        filteredProducts = products.where((product) => product.price > 20000000).toList();
        filteredProducts.sort((a, b) => b.price.compareTo(a.price));
        break;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF9F9F9),
        ),
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF9F9F9),
            ),
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 14, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(24, 16, 24, 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.go('/home');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              width: 48,
                              height: 48,
                              padding: const EdgeInsets.fromLTRB(10, 10, 15.2, 16),
                              child: const SizedBox(
                                width: 17.8,
                                height: 16,
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Color(0xFFFE0000),
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Text(
                            'Danh sách sản phẩm',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              height: 1.4,
                              color: const Color(0xFF101817),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Container(
                            width: 48,
                            height: 48,
                            padding: const EdgeInsets.fromLTRB(10, 10, 15.2, 16),
                            child: const SizedBox(
                              width: 17.8,
                              height: 16,
                              child: Icon(
                                Icons.favorite_border_outlined,
                                color: Color(0xFFFE0000),
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(4, 0, 0, 25),
                    child: SizedBox(
                      width: 372,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedFilter = 'All';
                                  filterProducts();
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(15.3, 7, 15.3, 7),
                                decoration: BoxDecoration(
                                  color: selectedFilter == 'All'
                                      ? const Color(0xFFF9B023)
                                      : const Color(0xFFF9F9F9),
                                  border: Border.all(color: const Color(0xFFB2BBCE)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'All',
                                  style: GoogleFonts.getFont(
                                    'Manrope',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    height: 1.4,
                                    color: selectedFilter == 'All'
                                        ? const Color(0xFFFAFBFD)
                                        : const Color(0xFF616A7D),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedFilter = 'Popular';
                                  filterProducts();
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: selectedFilter == 'Popular'
                                      ? const Color(0xFFF9B023)
                                      : const Color(0xFFF9F9F9),
                                  border: Border.all(color: const Color(0xFFB2BBCE)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.fromLTRB(16.3, 8, 16.3, 8),
                                child: Text(
                                  'Popular',
                                  style: GoogleFonts.getFont(
                                    'Manrope',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    height: 1.4,
                                    color: selectedFilter == 'Popular'
                                        ? const Color(0xFFFAFBFD)
                                        : const Color(0xFF616A7D),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedFilter = 'Low Price';
                                  filterProducts();
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(15.3, 7, 15.3, 7),
                                decoration: BoxDecoration(
                                  color: selectedFilter == 'Low Price'
                                      ? const Color(0xFFF9B023)
                                      : const Color(0xFFF9F9F9),
                                  border: Border.all(color: const Color(0xFFB2BBCE)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'Low Price',
                                  style: GoogleFonts.getFont(
                                    'Manrope',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    height: 1.4,
                                    color: selectedFilter == 'Low Price'
                                        ? const Color(0xFFFAFBFD)
                                        : const Color(0xFF616A7D),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedFilter = 'High Price';
                                  filterProducts();
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(15.3, 7, 15.3, 7),
                                decoration: BoxDecoration(
                                  color: selectedFilter == 'High Price'
                                      ? const Color(0xFFF9B023)
                                      : const Color(0xFFF9F9F9),
                                  border: Border.all(color: const Color(0xFFB2BBCE)),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'High Price',
                                  style: GoogleFonts.getFont(
                                    'Manrope',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    height: 1.4,
                                    color: selectedFilter == 'High Price'
                                        ? const Color(0xFFFAFBFD)
                                        : const Color(0xFF616A7D),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: filteredProducts.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          final product = filteredProducts[index];
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetails(product: product),
                            ),
                          );
                        },
                        child: ProductItem(product: filteredProducts[index]),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
