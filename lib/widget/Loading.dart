import 'package:banhangdienmay/api/fetchApi.dart';
import 'package:banhangdienmay/api/fetchData.dart';
import 'package:banhangdienmay/common/router.dart';
import 'package:banhangdienmay/model/bannerModel.dart';
import 'package:banhangdienmay/model/categoryModel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Loading Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<bool> fetchData() async {
    Map<String, dynamic> dataBanner = await fetchBanner();
    Iterable listBanner = dataBanner['data'];
    Map<String, dynamic> dataCategory = await fetchCategory();
    Iterable listCategory = dataCategory['data'];
    Data.getInstance().banners.clear();
    Data.getInstance().banners.addAll(listBanner.map((item) => BannerModel.fromJson(item)).toList());
    Data.getInstance().categories.clear();
    Data.getInstance().categories.addAll(listCategory.map((item) => CategoryModel.fromJson(item)).toList());
    return true;
  }

  @override
  void initState() {
    super.initState();
    fetchData().then((check) {
      if (check) {
        GoRouter.of(context).go('/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
            Image(
              image: AssetImage('assets/logo.png'),
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
