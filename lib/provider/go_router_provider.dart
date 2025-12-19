import 'package:first_flutter_project/page/home.dart';
import 'package:first_flutter_project/page/login_page.dart';
import 'package:first_flutter_project/provider/user_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../page/recipe.dart';

part 'go_router_provider.g.dart';

@riverpod
class GoRouterProvider extends _$GoRouterProvider {
  @override
  GoRouter build() {
    final goRouter = GoRouter(
      initialLocation: "/",
      redirect: (context, goRouterState) async {
        if (goRouterState.matchedLocation == "/") {
          bool isLogin = await ref
              .read(userModelProviderProvider.notifier)
              .checkToken();
          if (isLogin) {
            return "/home";
          }
          return "/login";
        }
      },
      routes: <RouteBase>[
        GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) {
            return const Home();
          },
          routes: <RouteBase>[
            GoRoute(
              path: '/home',
              builder: (BuildContext context, GoRouterState state) {
                return Home();
              },
            ),
            GoRoute(
              path: '/login',
              builder: (BuildContext context, GoRouterState state) {
                return LoginPage();
              },
            ),
            GoRoute(
              path: '/recipe',
              builder: (BuildContext context, GoRouterState state) {
                return Recipe();
              },
            ),
          ],
        ),
      ],
    );
    return goRouter;
  }
}
