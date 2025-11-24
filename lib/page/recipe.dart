import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'common_title.dart';

class Recipe extends StatefulWidget {
  const Recipe({super.key});

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  List<String> label = [
    'NAME',
    'CATEGORY',
    'DESCRIPTION',
    'INGREDIENTS',
    'DESCRIPTION',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w),
        child: Column(
          children: [
            SizedBox(height: 20.h),
            CommonTitle(
              title: 'Recipe',
              leftWight: Align(
                alignment: AlignmentGeometry.centerLeft,
                child: IconButton(
                  onPressed: () => context.pop(),
                  icon: Icon(Icons.arrow_back),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Expanded(
              child: ListView(
                children: List.generate(label.length, (index) {
                  return buildTextFormItem(label[index]);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextFormItem(String title) {
    return SizedBox(
      height: 75.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(title),
          SizedBox(height: 5.h),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              fillColor: Color(0xFFF1F1F1),
            ),
          ),
        ],
      ),
    );
  }
}
