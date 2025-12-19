import 'package:first_flutter_project/model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodGridView extends StatelessWidget {
  const FoodGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 每行显示的项目数
        crossAxisSpacing: 10, // 水平间距
        mainAxisSpacing: 10, // 垂直间距
        childAspectRatio: 1.0, // 子项宽高比
      ),
      itemCount: foodList.length, // 项目总数
      itemBuilder: (context, index) {
        return Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              alignment: AlignmentGeometry.bottomRight,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(foodList[index].picturePath!),
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
                  '${foodList[index].title}',
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
      },
    );
  }
}
