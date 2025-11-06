import 'package:first_flutter_project/page/home.dart';
import 'package:first_flutter_project/page/login_page.dart';
import 'package:first_flutter_project/page/user_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/login',
          builder: (BuildContext context, GoRouterState state) {
            return LoginPage();
          },
        ),

        GoRoute(
          path: '/user',
          builder: (BuildContext context, GoRouterState state) {
            return UserPage();
          },
        ),
      ],
    ),
  ],
);
