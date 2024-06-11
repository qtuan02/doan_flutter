import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatefulWidget {
  const Product({super.key});
  @override
  ProductPage createState() => ProductPage();
}

class ProductPage extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(25),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 16, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(4, 0, 7, 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 25.4, 0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFF8F9FB),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 15, 16),
                                child: const SizedBox(
                                  width: 10,
                                  height: 10.4,
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Color(0xFFFE0000),
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 7, 0, 9),
                            child: Text(
                              'Danh sách sản phẩm',
                              style: GoogleFonts.getFont(
                                'Manrope',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                height: 1.5,
                                color: const Color(0xFF1E222B),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 5, 0, 12.5),
                        width: 15,
                        height: 15,
                        child: const SizedBox(
                          width: 15,
                          height: 15,
                          child: Icon(
                            Icons.search,
                            color: Color(0xFFFE0000),
                            size: 25,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 1, 36, 9),
                        width: 15,
                        height: 15,
                        child: const SizedBox(
                          width: 16,
                          height: 18,
                          child: Icon(
                            Icons.shopping_bag,
                            color: Color(0xFFFE0000),
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
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF9B023),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding:
                                const EdgeInsets.fromLTRB(16.3, 8, 16.3, 8),
                            child: Text(
                              'Popular',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                height: 1.4,
                                color: const Color(0xFFFAFBFD),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding:
                                const EdgeInsets.fromLTRB(15.3, 7, 15.3, 7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFFB2BBCE)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Low Price',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                height: 1.4,
                                color: const Color(0xFF616A7D),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding:
                                const EdgeInsets.fromLTRB(15.3, 7, 15.3, 7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFFB2BBCE)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Small Fishes',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                height: 1.4,
                                color: const Color(0xFF616A7D),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFFB2BBCE)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Big',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                height: 1.4,
                                color: const Color(0xFF616A7D),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 7, 15, 7),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFFB2BBCE)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'Abcdsdsdsdsds',
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                height: 1.4,
                                color: const Color(0xFF616A7D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 20, 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F9FB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(17, 20, 15, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 23),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: SizedBox(
                                        width: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  15, 0, 0, 0),
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: Container(
                                                  width: 110,
                                                  height: 110,
                                                  padding:
                                                      const EdgeInsets.all(5.7),
                                                  child: SizedBox(
                                                    width: 80,
                                                    height: 80,
                                                    child: Image.asset(
                                                      'assets/product1.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color:const Color(0xFFFFFFFF),
                                                    borderRadius:BorderRadius.circular(50),
                                                    border: Border.all(
                                                      color: Colors.grey, 
                                                      width: 1, 
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0, 2, 2, 3),
                                                    child: const SizedBox(
                                                      width: 17.8,
                                                      height: 16,
                                                      child: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin:const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFE00000),
                                                      borderRadius: BorderRadius.circular(50),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1, 
                                                      ),
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Container(
                                                          width: 10.5,
                                                          height: 1.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                        Container(
                                                          width: 1.5,
                                                          height: 10.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$325',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Product 1',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.3,
                                        letterSpacing: 0.2,
                                        color: const Color(0xFF616A7D),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Còn lại: ',
                                          style: GoogleFonts.getFont(
                                            'Manrope',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF1E222B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1.111',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: const Color(0xFF616A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F9FB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(17, 20, 15, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 23),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: SizedBox(
                                        width: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  15, 0, 0, 0),
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: Container(
                                                  width: 110,
                                                  height: 110,
                                                  padding:
                                                      const EdgeInsets.all(5.7),
                                                  child: SizedBox(
                                                    width: 80,
                                                    height: 80,
                                                    child: Image.asset(
                                                      'assets/product1.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color:const Color(0xFFFFFFFF),
                                                    borderRadius:BorderRadius.circular(50),
                                                    border: Border.all(
                                                      color: Colors.grey, 
                                                      width: 1, 
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0, 2, 2, 3),
                                                    child: const SizedBox(
                                                      width: 17.8,
                                                      height: 16,
                                                      child: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin:const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFE00000),
                                                      borderRadius: BorderRadius.circular(50),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1, 
                                                      ),
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Container(
                                                          width: 10.5,
                                                          height: 1.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                        Container(
                                                          width: 1.5,
                                                          height: 10.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$325',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Product 1',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.3,
                                        letterSpacing: 0.2,
                                        color: const Color(0xFF616A7D),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Còn lại: ',
                                          style: GoogleFonts.getFont(
                                            'Manrope',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF1E222B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1.111',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: const Color(0xFF616A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 20, 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F9FB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(17, 20, 15, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 23),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: SizedBox(
                                        width: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  15, 0, 0, 0),
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: Container(
                                                  width: 110,
                                                  height: 110,
                                                  padding:
                                                      const EdgeInsets.all(5.7),
                                                  child: SizedBox(
                                                    width: 80,
                                                    height: 80,
                                                    child: Image.asset(
                                                      'assets/product1.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color:const Color(0xFFFFFFFF),
                                                    borderRadius:BorderRadius.circular(50),
                                                    border: Border.all(
                                                      color: Colors.grey, 
                                                      width: 1, 
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0, 2, 2, 3),
                                                    child: const SizedBox(
                                                      width: 17.8,
                                                      height: 16,
                                                      child: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin:const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFE00000),
                                                      borderRadius: BorderRadius.circular(50),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1, 
                                                      ),
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Container(
                                                          width: 10.5,
                                                          height: 1.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                        Container(
                                                          width: 1.5,
                                                          height: 10.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$325',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Product 1',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.3,
                                        letterSpacing: 0.2,
                                        color: const Color(0xFF616A7D),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Còn lại: ',
                                          style: GoogleFonts.getFont(
                                            'Manrope',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF1E222B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1.111',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: const Color(0xFF616A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F9FB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(17, 20, 15, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 23),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: SizedBox(
                                        width: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  15, 0, 0, 0),
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: Container(
                                                  width: 110,
                                                  height: 110,
                                                  padding:
                                                      const EdgeInsets.all(5.7),
                                                  child: SizedBox(
                                                    width: 80,
                                                    height: 80,
                                                    child: Image.asset(
                                                      'assets/product1.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color:const Color(0xFFFFFFFF),
                                                    borderRadius:BorderRadius.circular(50),
                                                    border: Border.all(
                                                      color: Colors.grey, 
                                                      width: 1, 
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0, 2, 2, 3),
                                                    child: const SizedBox(
                                                      width: 17.8,
                                                      height: 16,
                                                      child: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin:const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFE00000),
                                                      borderRadius: BorderRadius.circular(50),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1, 
                                                      ),
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Container(
                                                          width: 10.5,
                                                          height: 1.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                        Container(
                                                          width: 1.5,
                                                          height: 10.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$325',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Product 1',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.3,
                                        letterSpacing: 0.2,
                                        color: const Color(0xFF616A7D),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Còn lại: ',
                                          style: GoogleFonts.getFont(
                                            'Manrope',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF1E222B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1.111',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: const Color(0xFF616A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 20, 22),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F9FB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(17, 20, 15, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 23),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: SizedBox(
                                        width: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  15, 0, 0, 0),
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: Container(
                                                  width: 110,
                                                  height: 110,
                                                  padding:
                                                      const EdgeInsets.all(5.7),
                                                  child: SizedBox(
                                                    width: 80,
                                                    height: 80,
                                                    child: Image.asset(
                                                      'assets/product1.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color:const Color(0xFFFFFFFF),
                                                    borderRadius:BorderRadius.circular(50),
                                                    border: Border.all(
                                                      color: Colors.grey, 
                                                      width: 1, 
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0, 2, 2, 3),
                                                    child: const SizedBox(
                                                      width: 17.8,
                                                      height: 16,
                                                      child: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin:const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFE00000),
                                                      borderRadius: BorderRadius.circular(50),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1, 
                                                      ),
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Container(
                                                          width: 10.5,
                                                          height: 1.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                        Container(
                                                          width: 1.5,
                                                          height: 10.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$325',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Product 1',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.3,
                                        letterSpacing: 0.2,
                                        color: const Color(0xFF616A7D),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Còn lại: ',
                                          style: GoogleFonts.getFont(
                                            'Manrope',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF1E222B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1.111',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: const Color(0xFF616A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F9FB),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(17, 20, 15, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 23),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: SizedBox(
                                        width: 150,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  15, 0, 0, 0),
                                              child: Opacity(
                                                opacity: 0.6,
                                                child: Container(
                                                  width: 110,
                                                  height: 110,
                                                  padding:
                                                      const EdgeInsets.all(5.7),
                                                  child: SizedBox(
                                                    width: 80,
                                                    height: 80,
                                                    child: Image.asset(
                                                      'assets/product1.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.end,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color:const Color(0xFFFFFFFF),
                                                    borderRadius:BorderRadius.circular(50),
                                                    border: Border.all(
                                                      color: Colors.grey, 
                                                      width: 1, 
                                                    ),
                                                  ),
                                                  child: Container(
                                                    width: 32,
                                                    height: 32,
                                                    alignment: Alignment.center,
                                                    padding: const EdgeInsets.fromLTRB(0, 2, 2, 3),
                                                    child: const SizedBox(
                                                      width: 17.8,
                                                      height: 16,
                                                      child: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin:const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFE00000),
                                                      borderRadius: BorderRadius.circular(50),
                                                      border: Border.all(
                                                        color: Colors.black,
                                                        width: 1, 
                                                      ),
                                                    ),
                                                    width: 32,
                                                    height: 32,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Container(
                                                          width: 10.5,
                                                          height: 1.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                        Container(
                                                          width: 1.5,
                                                          height: 10.5,
                                                          color: const Color(
                                                              0xFFFFFFFF),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 4),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$325',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Product 1',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        height: 1.3,
                                        letterSpacing: 0.2,
                                        color: const Color(0xFF616A7D),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Còn lại: ',
                                          style: GoogleFonts.getFont(
                                            'Manrope',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF1E222B),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '1.111',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          height: 1.3,
                                          color: const Color(0xFF616A7D),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
