import 'package:first_flutter_project/component/click_container.dart';
import 'package:first_flutter_project/page/categories.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: buildBody(),
      bottomNavigationBar: Container(
        color: Color(0xFFD9D9D9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 0,
          children: [
            Expanded(
              child: const ClickContainer(iconData: Icons.home, index: 0),
            ),
            Expanded(
              child: const ClickContainer(
                iconData: Icons.category_sharp,
                index: 1,
              ),
            ),
            Expanded(
              child: const ClickContainer(iconData: Icons.favorite, index: 2),
            ),
            Expanded(
              child: const ClickContainer(
                iconData: Icons.add_circle_sharp,
                index: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget? buildBody() {
    if (currentIndex == 0) {
      return Categories();
    }
    if (currentIndex == 1) {
      return Categories();
    }
    if (currentIndex == 2) {
      return Categories();
    }
    if (currentIndex == 3) {
      return Categories();
    }
  }
}
