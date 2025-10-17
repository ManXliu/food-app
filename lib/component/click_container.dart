import 'package:first_flutter_project/provider/home_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClickContainer extends StatefulWidget {
  final IconData iconData;

  final int index;

  const ClickContainer({
    super.key,
    required this.iconData,
    required this.index,
  });

  @override
  State<ClickContainer> createState() => _ClickContainerState();
}

class _ClickContainerState extends State<ClickContainer> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final watch = ref.watch(homeIndexProvider);
        Color? color;
        if (widget.index == watch) {
          color = Color(0x4000B4BF);
        }
        return GestureDetector(
          onTap: () {
            print(widget.index);
            ref.read(homeIndexProvider.notifier).increment(widget.index);
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
