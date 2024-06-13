import 'package:banhangdienmay/api/fetchData.dart';
import 'package:banhangdienmay/widget/ProductItem.dart';
import 'package:flutter/material.dart';

class MyProductPopular extends StatefulWidget {
  const MyProductPopular({super.key});

  @override
  State<MyProductPopular> createState() => _MyProductPopularState();
}

class _MyProductPopularState extends State<MyProductPopular> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            padding: const EdgeInsets.fromLTRB(10, 14, 0, 14),
            child: const Text("SẢN PHẨM BÁN CHẠY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFFE0000)))
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
            childAspectRatio: 0.8,
          ),
          itemCount: Data().productPopular.length,
          itemBuilder: (context, index) {
            return ProductItem(product: Data().productPopular[index]);
          },
        ),
      ],
    );
  }
}