import 'package:first_flutter_project/page/common_title.dart';
import 'package:first_flutter_project/page/search/food_grid_view2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 喜爱
class Favorities extends StatefulWidget {
  const Favorities({super.key});

  @override
  State<Favorities> createState() => _FavoritiesState();
}

class _FavoritiesState extends State<Favorities> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w),
      child: Column(
        children: [
          SizedBox(height: 20.h),
          CommonTitle(
            title: 'Favorites',
            widget: Align(
              alignment: AlignmentGeometry.centerRight,
              child: IconButton(
                onPressed: () {
                  context.push("/recipe");
                },
                icon: Icon(Icons.add),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(child: FoodGridView2()),
        ],
      ),
    );
  }
}
