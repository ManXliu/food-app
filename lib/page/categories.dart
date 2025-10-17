import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFD9D9D9),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              child: Icon(Icons.home),
              onTap: () {
                print(12);
              },
            ),
          ),
          Expanded(child: Icon(Icons.home)),
          Expanded(child: Icon(Icons.home)),
        ],
      ),
    );
  }
}
