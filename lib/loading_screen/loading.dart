import 'package:flutter/material.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
        backgroundColor: Color(0xFF0C8A7B),
        title: Text(widget.title),
      ),
      body: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF0C8A7B),
          ),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 332, 0, 332),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0.6, 0, 0, 16),
                    width: 450,
                    height: 100,
                    child: 
                    SizedBox(
                      width: 80,
                      height: 100,
                      child: SvgPicture.asset(
                        'assets/logo_facebook.svg',
                      ),
                    ),
                  ),
                  Text(
                    'Electronics Shop',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      height: 1.3,
                      color: const Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              ),
            )
        )),
      );
  }
}