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
        backgroundColor: const Color(0xFFFE0000),
        title: Text(widget.title),
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
                margin: const EdgeInsets.fromLTRB(24, 0, 24, 8),
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
                        padding: const EdgeInsets.fromLTRB(15, 16, 15.2, 16),
                        child: 
                        const SizedBox(
                          width: 20,
                          height: 20,
                          child: Icon(
                            Icons.arrow_back, 
                            color: Color(0xFFFE0000), 
                          ),
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
                              image: AssetImage(
                                'assets/product1.png',
                              ),
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
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text(
                      '\$99,99',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        height: 1.3,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 18.4, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                                      child: const SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: Icon(
                                          Icons.person_2_outlined, 
                                          color: Color(0xFFFE0000), 
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                      child: Text(
                                        '341 Seen',
                                        style: GoogleFonts.getFont(
                                          'Roboto Condensed',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          height: 2,
                                          color: const Color(0xFF828A89),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(0, 0.8, 5.8, 0.8),
                                      width: 18.3,
                                      height: 16.5,
                                      child: 
                                      const SizedBox(
                                        width: 18.3,
                                        height: 16.5,
                                        child: Icon(
                                          Icons.favorite_border_outlined, 
                                          color: Color(0xFFFE0000), 
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '294 Liked',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13,
                                        height: 2,
                                        color: const Color(0xFF828A89),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 121,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.5),
                                  child: SizedBox(
                                    width: 21,
                                    height: 21,
                                    child: SvgPicture.network(
                                      'assets/vectors/star_27_x2.svg',
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.5),
                                  child: SizedBox(
                                    width: 21,
                                    height: 21,
                                    child: SvgPicture.network(
                                      'assets/vectors/star_3_x2.svg',
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.5),
                                  child: SizedBox(
                                    width: 21,
                                    height: 21,
                                    child: SvgPicture.network(
                                      'assets/vectors/star_48_x2.svg',
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(0.5),
                                  child: SizedBox(
                                    width: 21,
                                    height: 21,
                                    child: SvgPicture.network(
                                      'assets/vectors/star_56_x2.svg',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 21,
                                  height: 21,
                                  child: SvgPicture.network(
                                    'assets/vectors/group_547_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 12.5, 0, 12.5),
                      child: SizedBox(
                        width: 71,
                        height: 30,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                    '',
                                  ),
                                ),
                              ),
                              child: const SizedBox(
                                width: 30,
                                height: 30,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                      '',
                                    ),
                                  ),
                                ),
                                child: const SizedBox(
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFE0000),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  height: 30,
                                  padding: const EdgeInsets.fromLTRB(5, 7.5, 8.7, 8.5),
                                  child: 
                                  Text(
                                    '+24',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11,
                                      height: 1.3,
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
              Container(
                margin: const EdgeInsets.fromLTRB(24, 0, 24, 21),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Description',
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFF0F0F2),
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    child: Container(
                                      width: 26,
                                      height: 26,
                                      padding: const EdgeInsets.fromLTRB(8, 13, 7.5, 11.5),
                                      child: 
                                      Container(
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
                                  margin: const EdgeInsets.fromLTRB(0, 3, 11.2, 3),
                                  child: Text(
                                    '04',
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
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFFE0000),
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    padding: const EdgeInsets.fromLTRB(8, 8, 7.5, 7.5),
                                    child: 
                                    SizedBox(
                                      width: 10.5,
                                      height: 10.5,
                                      child: SvgPicture.network(
                                        'assets/vectors/group_593_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 1, 0, 1),
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
                                      text: 'Total :',
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
                          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 24,
                                height: 24,
                                child: SvgPicture.network(
                                  'assets/vectors/frame_x2.svg',
                                ),
                              ),
                              Text(
                                'Add To Card',
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
}