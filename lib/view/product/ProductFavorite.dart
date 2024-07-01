import 'package:banhangdienmay/api/fetchData.dart';
import 'package:banhangdienmay/widget/BottomNavigationBar.dart';
import 'package:banhangdienmay/widget/ProductItem.dart';
import 'package:banhangdienmay/widget/ProductItemFavorite.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
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
                      margin: const EdgeInsets.fromLTRB(24, 15, 24, 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context); 
                            },
                            child: Container(
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
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              'Yêu thích',
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
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        childAspectRatio: 0.8,
                      ),
                      itemCount: Data().productPopular.length,
                      itemBuilder: (context, index) {
                        return ProductItemFavorite(
                            product: Data().productPopular[index]);
                      },
                    ),
                    
                  ],
                ),
              ),
            )
          )
        ),
      );
  }
}
