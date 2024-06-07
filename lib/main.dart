import 'dart:convert';
import 'package:banhangdienmay/view/cart/cartWidget.dart';
import 'package:banhangdienmay/view/home.dart';
import 'package:banhangdienmay/view/product/productWidget.dart';
import 'package:banhangdienmay/view/product/product.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
        backgroundColor: const Color(0xFFFE0000),
        title: Row(
          children: [
            SizedBox(
              width: 80, 
              height: 80, 
              child: Image.asset(
                'assets/logo.png', 
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(17.3, 13.3, 19, 13.2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5), 
                    width: 1.5, 
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      width: 16.5,
                      height: 16.5,
                      child: const Icon(
                        Icons.search,
                        color: Color(0xFFFE0000),
                        size: 22,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0.8, 0, 0.8),
                      child: Text(
                        'Tìm kiếm...',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          height: 1,
                          color: const Color(0xFF828A89),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Home(),
      // body: Cartwidget(),
      bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: Color(0xFFFE0000)),
              selectedIcon: Icon(Icons.home),
              label: 'Trang chủ',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_bag_outlined, color: Color(0xFFFE0000)),
              selectedIcon: Icon(Icons.shopping_bag),
              label: 'Sản phẩm',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_basket_outlined,
                  color: Color(0xFFFE0000)),
              selectedIcon: Icon(Icons.shopping_basket),
              label: 'Giỏ hàng',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline, color: Color(0xFFFE0000)),
              selectedIcon: Icon(Icons.person),
              label: 'Thông tin',
            ),
          ]
        )
    ));
  }
}
