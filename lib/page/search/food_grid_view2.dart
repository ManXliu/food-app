import 'package:first_flutter_project/model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodGridView2 extends StatelessWidget {
  const FoodGridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // 每行显示的项目数
        crossAxisSpacing: 10, // 水平间距
        mainAxisSpacing: 10, // 垂直间距
        childAspectRatio: 0.8, // 子项宽高比
      ),
      itemCount: foodList.length, // 项目总数
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsetsGeometry.all(5.h),
          decoration: BoxDecoration(
            color: Color(0xFFF6F6F6),
            borderRadius: BorderRadius.all(Radius.circular(5.h)),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.h)),
                        image: DecorationImage(
                          image: AssetImage('${foodList[index].picturePath}'),
                          fit: BoxFit.cover,
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
                        child: Image(
                          image: AssetImage('assets/images/heart.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text(
                    '${foodList[index].title}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/fire.png'),
                      height: 10.h,
                      width: 10.w,
                    ),
                    Text(
                      '${foodList[index].kcal}kcal',
                      style: TextStyle(color: Color(0xFF868686), fontSize: 9.h),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      '·',
                      style: TextStyle(color: Color(0xFF868686), fontSize: 9.h),
                    ),
                    SizedBox(width: 5.w),
                    Image(
                      image: AssetImage('assets/images/clock.png'),
                      height: 10.h,
                      width: 10.w,
                    ),
                    Text(
                      '${foodList[index].clock}min',
                      style: TextStyle(color: Color(0xFF868686), fontSize: 9.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
