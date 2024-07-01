import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Import SharedPreferences

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  bool isLoggedIn = false; 

  @override
  void initState() {
    super.initState();
    _checkLoginStatus(); 
  }

  void _checkLoginStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? ''; 
    setState(() {
      isLoggedIn = token.isNotEmpty; 
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/product');
        break;
      case 2:
        context.go('/cart');
        break;
      case 3:
        if (isLoggedIn) {
          context.go('/signin'); 
        } else {
          context.go('/profile'); 
        }
        break;
      default:
        break;
    }
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
            selectedIcon: Icon(Icons.home, color: Color(0xFFFE0000)),
            label: 'Trang chủ',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined, color: Color(0xFFFE0000)),
            selectedIcon: Icon(Icons.shopping_bag, color: Color(0xFFFE0000)),
            label: 'Sản phẩm',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined, color: Color(0xFFFE0000)),
            selectedIcon:
                Icon(Icons.shopping_cart_sharp, color: Color(0xFFFE0000)),
            label: 'Giỏ hàng',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline, color: Color(0xFFFE0000)),
            selectedIcon: Icon(
              Icons.person,
              color: Color(0xFFFE0000),
            ),
            label: 'Thông tin',
          ),
        ],
      ),
    );
  }
}
