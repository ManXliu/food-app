import 'package:first_flutter_project/page/search/food_grid_view.dart';
import 'package:first_flutter_project/page/search/food_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'food_grid_view2.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // 展示方式
  int show = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Stack(
            children: [
              Center(
                child: Text(
                  "Search",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                ),
              ),
              Positioned(
                right: 0,
                top: 8.h,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (show == 0) {
                        show = 1;
                      } else if (show == 1) {
                        show = 2;
                      } else {
                        show = 0;
                      }
                    });
                  },
                  child: Icon(Icons.menu),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            "What is in your kitchen?",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          Text("Enter some ingredients"),
          SizedBox(height: 10.h),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              hintText: 'Type your ingredients',
              hintStyle: TextStyle(color: Color(0xFFAEAEAE)),
            ),
          ),

          SizedBox(height: 10.h),
          Expanded(child: buildShow()),
        ],
      ),
    );
  }

  Widget buildShow() {
    if (show == 0) {
      return FoodGridView();
    } else if (show == 1) {
      return FoodListView();
    }
    return FoodGridView2();
  }
}
