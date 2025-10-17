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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFFD9D9D9),
            icon: Icon(Icons.home),
            label: "123123",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "123123"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "123123"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_rounded),
            label: "123123",
          ),
        ],
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
