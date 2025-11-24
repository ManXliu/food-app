import 'dart:math' as math;

import 'package:first_flutter_project/page/common_title.dart';
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

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  // 展示方式
  int show = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0.0,
      end: 2 * math.pi * 0.25,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    show = 0;
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          CommonTitle(
            rightWight: Positioned(
              right: 0,
              top: 8.h,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (show == 0) {
                      _animation =
                          Tween<double>(
                            begin: 0,
                            end: 2 * math.pi * 0.25,
                          ).animate(
                            CurvedAnimation(
                              parent: _controller,
                              curve: Curves.easeInOut,
                            ),
                          );
                      show = 1;
                    } else if (show == 1) {
                      _animation =
                          Tween<double>(
                            begin: 2 * math.pi * 0.25,
                            end: 2 * math.pi * 0.5,
                          ).animate(
                            CurvedAnimation(
                              parent: _controller,
                              curve: Curves.easeInOut,
                            ),
                          );
                      show = 2;
                    } else {
                      show = 0;
                      _animation =
                          Tween<double>(
                            begin: 2 * math.pi * 0.5,
                            end: 2 * math.pi,
                          ).animate(
                            CurvedAnimation(
                              parent: _controller,
                              curve: Curves.easeInOut,
                            ),
                          );
                    }
                    _controller.reset();
                    _controller.forward();
                  });
                },
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (BuildContext context, Widget? child) {
                    return Transform.rotate(
                      angle: _animation.value,
                      child: Icon(Icons.arrow_circle_down),
                    );
                  },
                ),
              ),
            ),
            title: "Search",
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
