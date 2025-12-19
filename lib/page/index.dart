import 'package:first_flutter_project/provider/go_router_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Index extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watch = ref.watch(goRouterProviderProvider);
    return ScreenUtilInit(
      designSize: const Size(360, 690), // 设计稿尺寸
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        builder: FToastBuilder(),
        routerConfig: watch,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            elevation: 30,
            backgroundColor: Color(0xFFD9D9D9),
            selectedItemColor: Colors.black,
            selectedIconTheme: IconThemeData(
              color: Colors.black,
              shadows: [BoxShadow(color: Color(0xFF00B4BF))],
            ),
          ),
        ),
      ),
    );
  }
}
