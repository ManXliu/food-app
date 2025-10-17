import 'package:first_flutter_project/provider/home_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigatorItem extends StatefulWidget {
  final IconData iconData;

  final int index;

  const CustomBottomNavigatorItem({
    super.key,
    required this.iconData,
    required this.index,
  });

  @override
  State<CustomBottomNavigatorItem> createState() =>
      _CustomBottomNavigatorItemState();
}

class _CustomBottomNavigatorItemState extends State<CustomBottomNavigatorItem> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        int watch = ref.watch(homeIndexProvider);
        Color? color;
        if (widget.index == watch) {
          color = Color(0x4000B4BF);
        }
        return GestureDetector(
          onTap: () {
            ref.read(homeIndexProvider.notifier).setIndex(widget.index);
          },
          child: Container(
            color: Color(0xFFD9D9D9),
            child: Container(
              margin: EdgeInsetsGeometry.only(top: 15),
              height: 60.h,
              child: SafeArea(
                child: Center(
                  child: Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(widget.iconData, size: 24.h),
                    // child: Text('${watch}'),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
