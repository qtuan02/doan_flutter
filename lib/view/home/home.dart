import 'package:banhangdienmay/widget/BannerSlider.dart';
import 'package:banhangdienmay/widget/CategorySlider.dart';
import 'package:banhangdienmay/widget/ProductPopular.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], // Màu nền của background
      ),
      child: const SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyBannerSlider(),
              MyCategorySlider(),
              MyProductPopular()
            ]
        ),
      ),
    );
  }
}
