import 'package:flutter/material.dart';
import 'dart:ui';
// import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});
  @override
  FavouritePage createState() => FavouritePage();
}

class FavouritePage extends State<Favorite> {
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
                      margin: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Container(
                              width: 48,
                              height: 48,
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 15.2, 16),
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
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              'Yêu thích',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
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
                              padding:
                                  const EdgeInsets.fromLTRB(10, 10, 15.2, 16),
                              child: const SizedBox(
                                width: 17.8,
                                height: 16,
                                child: Icon(
                                  Icons.favorite,
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
                      margin: const EdgeInsets.fromLTRB(24, 0, 24, 44),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                // alignment: Alignment.bottomRight,
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(16, 0, 0, 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 12),
                                          child: SizedBox(
                                            width: 160,
                                            height: 160,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 12, 0, 12),
                                                    decoration:
                                                        const BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                          'assets/product1.png',
                                                        ),
                                                      ),
                                                    ),
                                                    child: const SizedBox(
                                                      width: 160,
                                                      height: 160,
                                                    ),
                                                  ),
                                                ),
                                                const Positioned(
                                                  right: 15,
                                                  top: 6,
                                                  child: SizedBox(
                                                    width: 15.6,
                                                    height: 14,
                                                    child: SizedBox(
                                                      width: 15.6,
                                                      height: 14,
                                                      child: Icon(
                                                        Icons.favorite,
                                                        color:
                                                            Color(0xFFFE0000),
                                                        size: 30,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Product 1',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Giá: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '\$39.00',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFE00000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 6),
                                                child: Text(
                                                  ' Còn lại: ',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFF101817),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                child: Text(
                                                  '15',
                                                  style: GoogleFonts.getFont(
                                                    'Roboto Condensed',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16,
                                                    height: 1.5,
                                                    color:
                                                        const Color(0xFFF2A666),
                                                  ),
                                                ),
                                              ),
                                            ],
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
                  ],
                ),
              ),
            ))));
  }
}