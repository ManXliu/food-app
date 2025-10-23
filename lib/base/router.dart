import 'package:first_flutter_project/page/home.dart';
import 'package:first_flutter_project/page/login.dart';
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
      ],
    ),
  ],
);
