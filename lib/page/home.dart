import 'package:first_flutter_project/component/custom_bottom_navigator_item.dart';
import 'package:first_flutter_project/page/categories.dart';
import 'package:first_flutter_project/page/favorities.dart';
import 'package:first_flutter_project/page/my_page.dart';
import 'package:first_flutter_project/page/search/search.dart' show Search;
import 'package:first_flutter_project/provider/home_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart'
    show FlutterNativeSplash;
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFfcfcfc),
        child: SafeArea(child: buildBody()),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFFD9D9D9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 0,
          children: [
            const CustomBottomNavigatorItem(iconData: Icons.home, index: 0),
            const CustomBottomNavigatorItem(
              iconData: Icons.category_sharp,
              index: 1,
            ),
            const CustomBottomNavigatorItem(iconData: Icons.favorite, index: 2),
            const CustomBottomNavigatorItem(iconData: Icons.person, index: 3),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final watch = ref.watch(homeIndexProvider);
        if (watch == 0) {
          return Search();
        }
        if (watch == 1) {
          return Categories();
        }
        if (watch == 2) {
          return Favorities();
        }
        return MyPage();
      },
    );
  }

  void initialization() async {
    // print('ready in 3...');
    // await Future.delayed(const Duration(seconds: 1));
    // print('ready in 2...');
    // await Future.delayed(const Duration(seconds: 1));
    // print('ready in 1...');
    // await Future.delayed(const Duration(seconds: 1));
    // print('go!');
    FlutterNativeSplash.remove();
  }
}
