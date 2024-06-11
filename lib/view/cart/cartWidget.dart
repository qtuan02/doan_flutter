import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});
  @override
  CartwidgetPage createState() => CartwidgetPage();
}

class CartwidgetPage extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(25),
        ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 0, 16, 41),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0, 0, 26.4, 0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF8F9FB),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 10, 17, 16),
                                    child: const SizedBox(
                                      width: 5,
                                      height: 8.4,
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
                                margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                                child: Text(
                                  'Giỏ hàng',
                                  style: GoogleFonts.getFont(
                                    'Manrope',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    height: 1,
                                    color: const Color(0xFF1E222B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(22, 0, 12, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 4, 26, 8),
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: const EdgeInsets.fromLTRB(
                                          2.5, 2.5, 2.5, 2.5),
                                      child: SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                          'assets/product1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 3),
                                      child: Text(
                                        'Product 1',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$7.90',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 13, 7.5, 11.5),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF828A89),
                                          ),
                                          child: const SizedBox(
                                            width: 10.5,
                                            height: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 5, 10.9, 10),
                                    child: Text(
                                      '2',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        height: 1.4,
                                        color: const Color(0xFF1E222B),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      width: 26,
                                      height: 26,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 10.5,
                                            height: 1.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 10.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 0, 16, 19.5),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFEBEBFB),
                          ),
                          child: const SizedBox(
                            width: 327,
                            height: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(22, 0, 12, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 4, 26, 8),
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: const EdgeInsets.fromLTRB(
                                          2.5, 2.5, 2.5, 2.5),
                                      child: SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                          'assets/product1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 3),
                                      child: Text(
                                        'Product 2',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$7.90',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 13, 7.5, 11.5),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF828A89),
                                          ),
                                          child: const SizedBox(
                                            width: 10.5,
                                            height: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 5, 10.9, 10),
                                    child: Text(
                                      '2',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        height: 1.4,
                                        color: const Color(0xFF1E222B),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      width: 26,
                                      height: 26,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 10.5,
                                            height: 1.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 10.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 0, 16, 19.5),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFEBEBFB),
                          ),
                          child: const SizedBox(
                            width: 327,
                            height: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(22, 0, 12, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 4, 26, 8),
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: const EdgeInsets.fromLTRB(
                                          2.5, 2.5, 2.5, 2.5),
                                      child: SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                          'assets/product1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 3),
                                      child: Text(
                                        'Product 3',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$7.90',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 13, 7.5, 11.5),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF828A89),
                                          ),
                                          child: const SizedBox(
                                            width: 10.5,
                                            height: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 5, 10.9, 10),
                                    child: Text(
                                      '2',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        height: 1.4,
                                        color: const Color(0xFF1E222B),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      width: 26,
                                      height: 26,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 10.5,
                                            height: 1.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 10.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 0, 16, 19.5),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFEBEBFB),
                          ),
                          child: const SizedBox(
                            width: 327,
                            height: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(22, 0, 12, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 4, 26, 8),
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: const EdgeInsets.fromLTRB(
                                          2.5, 2.5, 2.5, 2.5),
                                      child: SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                          'assets/product1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 3),
                                      child: Text(
                                        'Product 4',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$7.90',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 13, 7.5, 11.5),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF828A89),
                                          ),
                                          child: const SizedBox(
                                            width: 10.5,
                                            height: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 5, 10.9, 10),
                                    child: Text(
                                      '2',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        height: 1.4,
                                        color: const Color(0xFF1E222B),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      width: 26,
                                      height: 26,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 10.5,
                                            height: 1.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 10.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(16, 0, 16, 19.5),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color(0xFFEBEBFB),
                          ),
                          child: const SizedBox(
                            width: 327,
                            height: 0.5,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(22, 0, 12, 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 4, 26, 8),
                                  child: Opacity(
                                    opacity: 0.6,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: const EdgeInsets.fromLTRB(
                                          2.5, 2.5, 2.5, 2.5),
                                      child: SizedBox(
                                        width: 25,
                                        height: 25,
                                        child: Image.asset(
                                          'assets/product1.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 3),
                                      child: Text(
                                        'Product 5',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '\$7.90',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 2, 0, 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      child: Container(
                                        width: 26,
                                        height: 26,
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 13, 7.5, 11.5),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF828A89),
                                          ),
                                          child: const SizedBox(
                                            width: 10.5,
                                            height: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 5, 10.9, 10),
                                    child: Text(
                                      '2',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        height: 1.4,
                                        color: const Color(0xFF1E222B),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF0F0F2),
                                        borderRadius: BorderRadius.circular(13),
                                      ),
                                      width: 26,
                                      height: 26,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Container(
                                            width: 10.5,
                                            height: 1.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                          Container(
                                            width: 1.5,
                                            height: 10.5,
                                            color: const Color(0xFFFE0000),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(18, 0, 18, 62),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Chỉnh sửa',
                            style: GoogleFonts.getFont(
                              'Manrope',
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              height: 1.3,
                              letterSpacing: 0.2,
                              color: const Color(0xFF2A4BA0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFF8F9FB),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.fromLTRB(16, 17, 16, 69),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                                child: Text(
                                  'HÓA ĐƠN THANH TOÁN',
                                  style: GoogleFonts.manrope(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: const Color(0xFF616A7D),
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(0.2, 0, 0, 13),
                                child: SizedBox(
                                  width: 286.8,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 10, 0),
                                        child: SizedBox(
                                          width: 231.2,
                                          child: Text(
                                            'Tổng giá',
                                            style: GoogleFonts.getFont(
                                              'Manrope',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              height: 1.4,
                                              color: const Color(0xFF616A7D),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '\$35.96',
                                        style: GoogleFonts.getFont(
                                          'Manrope',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          height: 1.4,
                                          color: const Color(0xFF1E222B),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                                child: SizedBox(
                                  width: 287,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 10, 1),
                                        child: SizedBox(
                                          width: 239.2,
                                          child: Text(
                                            'Thuế (%VAT)',
                                            style: GoogleFonts.getFont(
                                              'Manrope',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              height: 1.4,
                                              color: const Color(0xFF616A7D),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 1, 0, 0),
                                        child: Text(
                                          '\$2.00',
                                          style: GoogleFonts.getFont(
                                            'Manrope',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF1E222B),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.fromLTRB(16, 0, 16, 19.5),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFEBEBFB),
                                  ),
                                  child: const SizedBox(
                                    width: 327,
                                    height: 0.5,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 34),
                                child: SizedBox(
                                  width: 287,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 10, 1),
                                        child: SizedBox(
                                          width: 232.1,
                                          child: Text(
                                            'Tổng cộng',
                                            style: GoogleFonts.getFont(
                                              'Manrope',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              height: 1.4,
                                              color: const Color(0xFF616A7D),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 1, 0, 0),
                                        child: Text(
                                          '\$37.96',
                                          style: GoogleFonts.getFont(
                                            'Manrope',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF1E222B),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFE0000),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 19, 0, 18),
                                    child: Text(
                                      'Thanh toán',
                                      style: GoogleFonts.getFont(
                                        'Manrope',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                    ),
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
              ],
            ),
          ),
        ));
  }
}
