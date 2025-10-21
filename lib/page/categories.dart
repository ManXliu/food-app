import 'package:first_flutter_project/model/category_model.dart';
import 'package:first_flutter_project/page/common_title.dart';
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
    return Container(
      padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          CommonTitle(title: 'Categories'),
          SizedBox(height: 20.h),
          ...List.generate(categoryList.length, (index) {
            return buildCategoryItem(categoryList[index]);
          }),
        ],
      ),
    );
  }

  Widget buildCategoryItem(CategoryModel model) {
    return Container(
      height: 40.h,
      padding: EdgeInsetsGeometry.all(5.h),
      margin: EdgeInsetsGeometry.only(bottom: 15.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.all(Radius.circular(5.h)),
        color: Color(0xFFF6F6F6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              '${model.title}',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentGeometry.topRight,
              child: Image(image: AssetImage(model.picturePath)),
            ),
          ),
        ],
      ),
    );
  }
}
