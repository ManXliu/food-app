import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.w,
      height: 20.h,
      child: Container(
        width: 20.w,
        height: 20.w,
        color: Colors.red,
        constraints: BoxConstraints.tight(Size(20.w, 20.w)),
      ),
    );
  }
}
