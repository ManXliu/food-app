import 'package:first_flutter_project/page/search/food_grid_view2.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Expanded(child: FoodGridView2()),
      ],
    );
  }
}
