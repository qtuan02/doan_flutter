import 'package:banhangdienmay/api/fetchData.dart';
import 'package:banhangdienmay/main.dart';
import 'package:banhangdienmay/view/cart/cartWidget.dart';
import 'package:banhangdienmay/view/login/signin.dart';
import 'package:banhangdienmay/widget/Loading.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Routes {
  GoRouter routes = GoRouter(
    initialLocation: '/loading',
    routes: [
      GoRoute(
          path: '/loading',
          pageBuilder: (context, state) => const MaterialPage(child: LoadingScreen())
      ),
      GoRoute(
          path: '/home',
          pageBuilder: (context, state) => const MaterialPage(child: MyHomePage())
      ),
      GoRoute(
          path: '/cart',
          pageBuilder: (context, state) => const MaterialPage(child: CartWidget())
      ),
      GoRoute(
          path: '/login',
          pageBuilder: (context, state) => const MaterialPage(child: Signin())
      ),
    ]
  );
}