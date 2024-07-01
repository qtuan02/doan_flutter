import 'package:banhangdienmay/widget/Search.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFE0000),
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/logo.png',
          width: 60, 
          height: 60, 
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search, color: Colors.white,),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            );
          },
        ),
      ],
    );
  }
}