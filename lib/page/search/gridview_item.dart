import 'package:first_flutter_project/model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({super.key, required this.foodModel});

  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          alignment: AlignmentGeometry.bottomRight,
          decoration: BoxDecoration(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(foodModel.picturePath!),
            ),
          ),
        ),
        Positioned(
          bottom: 0.h,
          left: 7.w,
          height: 60.h,
          width: ScreenUtil().screenWidth / 2 - 40,
          child: Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Text(
              textAlign: TextAlign.start,
              '${foodModel.title}',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3.h),
            ),
            height: 20.h,
            width: 20.h,
            padding: EdgeInsetsGeometry.all(2.h),
            child: Image(image: AssetImage('assets/images/heart.png')),
          ),
        ),
      ],
    );
  }
}
