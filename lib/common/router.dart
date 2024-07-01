import 'package:banhangdienmay/main.dart';
import 'package:banhangdienmay/view/auth/signin.dart';
import 'package:banhangdienmay/view/auth/signup.dart';
import 'package:banhangdienmay/view/cart/cartWidget.dart';
import 'package:banhangdienmay/view/product/Product.dart';
import 'package:banhangdienmay/view/profile/profile.dart';
import 'package:banhangdienmay/widget/BottomNavigationBar.dart';
import 'package:banhangdienmay/widget/Loading.dart';
import 'package:banhangdienmay/view/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  final GoRouter routes = GoRouter(
    initialLocation: '/loading',
    routes: [
      GoRoute(
        path: '/loading',
        pageBuilder: (context, state) => const MaterialPage(child: LoadingScreen()),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return Scaffold(
            body: child,
            bottomNavigationBar: const MyBottomNavigationBar(),
          );
        },
        routes: [
          GoRoute(
            path: '/home',
            pageBuilder: (context, state) => const MaterialPage(child: MyHomePage()),
          ),
          GoRoute(
            path: '/product',
            pageBuilder: (context, state) => const MaterialPage(child: Product()),
          ),
          GoRoute(
            path: '/profile',
            pageBuilder: (context, state) => const MaterialPage(child: Profile()),
          ),
          GoRoute(
            path: '/cart',
            pageBuilder: (context, state) => const MaterialPage(child: CartWidget()),
          ),
        ],
      ),
      GoRoute(
        path: '/signin',
        pageBuilder: (context, state) => const MaterialPage(child: SignIn()),
      ),
      GoRoute(
        path: '/signup',
        pageBuilder: (context, state) => const MaterialPage(child: SignUp()),
      ),
    ],
  );
}