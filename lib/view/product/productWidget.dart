import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0C8A7B),
        title: Text(widget.title),
      ),
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
                  padding: const EdgeInsets.fromLTRB(17, 19, 17, 19),
                  child: 
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: 
                    ClipRRect(
                      borderRadius: BorderRadius.circular(2),
                      child: const SizedBox(
                        width: 18,
                        height: 18,
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF000000),
                          size: 15,
                          ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Text(
                  'Products',
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
                  padding: const EdgeInsets.fromLTRB(15, 16, 15.2, 16),
                  child: 
                  const SizedBox(
                    width: 17.8,
                    height: 16,
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xFFFE0000),
                      size: 20,
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
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                              child: SizedBox(
                                width: 156,
                                height: 160,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(14),
                                      child: const SizedBox(
                                        width: 156,
                                        height: 160,
                                        child: Icon(
                                          Icons.favorite_border,
                                          color: Color(0xFFFE0000),
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/product1.png',
                                            ),
                                          ),
                                        ),
                                        child: const SizedBox(
                                          width: 97,
                                          height: 112,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 16.4,
                                      top: 17,
                                      child: SizedBox(
                                        width: 15.6,
                                        height: 14,
                                        child: 
                                        SizedBox(
                                          width: 15.6,
                                          height: 14,
                                          child: SvgPicture.network(
                                            'assets/vectors/vector_50_x2.svg',
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                    child: Text(
                                      'Rotating Lounge Chair',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.5,
                                        color: const Color(0xFF101817),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      '\$39.00',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.5,
                                        color: const Color(0xFFF2A666),
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                            child: SizedBox(
                              width: 156,
                              height: 160,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(14),
                                    child: SizedBox(
                                      width: 156,
                                      height: 160,
                                      child: SvgPicture.network(
                                        'assets/vectors/rectangle_105715_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/product1.png',
                                          ),
                                        ),
                                      ),
                                      child: const SizedBox(
                                        width: 87,
                                        height: 112,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 16.4,
                                    top: 17,
                                    child: SizedBox(
                                      width: 15.6,
                                      height: 14,
                                      child: 
                                      SizedBox(
                                        width: 15.6,
                                        height: 14,
                                        child: SvgPicture.network(
                                          'assets/vectors/vector_61_x2.svg',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                  child: Text(
                                    'Trapeziam Arm Chair',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.5,
                                      color: const Color(0xFF101817),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '\$36.00',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.5,
                                      color: const Color(0xFFF2A666),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                            child: SizedBox(
                              width: 156,
                              height: 160,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(14),
                                    child: SizedBox(
                                      width: 156,
                                      height: 160,
                                      child: SvgPicture.network(
                                        'assets/vectors/rectangle_10574_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/product1.png',
                                          ),
                                        ),
                                      ),
                                      child: const SizedBox(
                                        width: 108,
                                        height: 112,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 16.4,
                                    top: 17,
                                    child: SizedBox(
                                      width: 15.6,
                                      height: 14,
                                      child: 
                                      SizedBox(
                                        width: 15.6,
                                        height: 14,
                                        child: SvgPicture.network(
                                          'assets/vectors/vector_33_x2.svg',
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
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                  child: Text(
                                    'Corada D3 Lounge Chair',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.5,
                                      color: const Color(0xFF101817),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '\$45.21',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      height: 1.5,
                                      color: const Color(0xFFF2A666),
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                          child: SizedBox(
                            width: 156,
                            height: 160,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: SizedBox(
                                    width: 156,
                                    height: 160,
                                    child: SvgPicture.network(
                                      'assets/vectors/rectangle_105710_x2.svg',
                                    ),
                                  ),
                                ),
                                Positioned(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          'assets/product1.png',
                                        ),
                                      ),
                                    ),
                                    child: const SizedBox(
                                      width: 92,
                                      height: 112,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 16.4,
                                  top: 17,
                                  child: SizedBox(
                                    width: 15.6,
                                    height: 14,
                                    child: 
                                    SizedBox(
                                      width: 15.6,
                                      height: 14,
                                      child: SvgPicture.network(
                                        'assets/vectors/vector_52_x2.svg',
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 6),
                                child: Text(
                                  'Pearl Beading Fur Textured ',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    height: 1.5,
                                    color: const Color(0xFF101817),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '\$29.68',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    height: 1.5,
                                    color: const Color(0xFFF2A666),
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
            ],
          ),
        ),
      ],
    ),
  ),
))));
  }
}