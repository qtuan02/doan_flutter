
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: Color(0xFFFE0000)),
              selectedIcon: Icon(Icons.home),
              label: 'Trang chủ',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_basket_outlined, color: Color(0xFFFE0000)),
              selectedIcon: Icon(Icons.shopping_basket),
              label: 'Giỏ hàng',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline, color: Color(0xFFFE0000)),
              selectedIcon: Icon(Icons.person),
              label: 'Thông tin',
            ),
          ]
      ),
    );
  }
}
