import 'package:banhangdienmay/view/product/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.item});
  final Product item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(item.product_name),
        ),
        body: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF9F9F9),
            ),
            child: SingleChildScrollView(
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
                              'Details',
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
                                  Icons.favorite_border,
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
                      margin: const EdgeInsets.fromLTRB(32, 0, 32, 24),
                      child: SizedBox(
                        width: 350,
                        height: 236,
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 0,
                              child: Container(
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage("assets/product1.png"),
                                  ),
                                ),
                                child: const SizedBox(
                                  width: 200,
                                  height: 200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(24, 0, 32.3, 24),
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Ox Mathis Furniture Modern Style',
                            style: GoogleFonts.getFont(
                              'Roboto Condensed',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              height: 1.3,
                              color: const Color(0xFF101817),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(24, 0, 24, 21),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Giá: ',
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          height: 1.4,
                                          color: const Color(0xFF000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$99,99',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              height: 1.6,
                                              color: const Color(0xFF8B4513),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Thương hiệu: ',
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          height: 1.4,
                                          color: const Color(0xFF000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: ' ',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              height: 1.6,
                                              color: const Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Danh mục: ',
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          height: 1.4,
                                          color: const Color(0xFF000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: ' ',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              height: 1.6,
                                              color: const Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Mô tả',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    height: 1.4,
                                    color: const Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'The Swedish Designer Monica Forstar’s Style Is Characterised By Her Enternal Love For New Materials And Beautiful Pure Shapes.',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                height: 1.6,
                                color: const Color(0xFF828A89),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 10.5, 24),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 8, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF0F0F2),
                                            borderRadius:
                                                BorderRadius.circular(13),
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
                                            0, 3, 11.2, 3),
                                        child: Text(
                                          '01',
                                          style: GoogleFonts.getFont(
                                            'Roboto Condensed',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            height: 1.4,
                                            color: const Color(0xFF101817),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 8, 0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFF0F0F2),
                                            borderRadius:
                                                BorderRadius.circular(13),
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
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 1, 0, 1),
                                    child: RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          height: 1.5,
                                          color: const Color(0xFF101817),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Tổng cộng :',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              height: 1.3,
                                              color: const Color(0xFF101817),
                                            ),
                                          ),
                                          const TextSpan(
                                            text: ' ',
                                          ),
                                          TextSpan(
                                            text: '\$90.900',
                                            style: GoogleFonts.getFont(
                                              'Roboto Condensed',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16,
                                              height: 1.3,
                                              color: const Color(0xFF101817),
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
                              decoration: BoxDecoration(
                                color: const Color(0xFFFE0000),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 16, 0, 16),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Thêm vào giỏ hàng',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.5,
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ],
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
            )));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Product>('item', item));
  }
}
