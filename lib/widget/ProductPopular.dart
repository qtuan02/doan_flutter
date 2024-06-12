import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            padding: EdgeInsets.fromLTRB(10, 14, 0, 14),
            child: Text("SẢN PHẨM BÁN CHẠY", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xFFFE0000)))
        ),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              child: Center(child: Text("$index")),
              color: Colors.cyan,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
            );
          },
        ),
      ],
    );
  }
}