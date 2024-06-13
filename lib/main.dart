import 'package:banhangdienmay/common/router.dart';
import 'package:banhangdienmay/view/home/home.dart';
import 'package:banhangdienmay/widget/AppBar.dart';
import 'package:banhangdienmay/widget/BottomNavigationBar.dart';
import 'package:banhangdienmay/widget/Loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes().routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: MyAppBar(),
      ),
      body: Home(),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}