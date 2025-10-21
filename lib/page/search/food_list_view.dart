import 'package:first_flutter_project/model/food_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.h)),
            color: Color(0xFFF6F6F6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 0.3,
                offset: Offset(0, 5),
              ),
            ],
          ),
          margin: EdgeInsetsGeometry.only(bottom: 10.h),
          padding: EdgeInsetsGeometry.only(
            top: 5.h,
            right: 9.h,
            left: 5.h,
            bottom: 5.h,
          ),
          height: 70.h,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    image: DecorationImage(
                      image: AssetImage(foodList[index].picturePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsetsGeometry.only(
                    top: 5.h,
                    bottom: 5.h,
                    left: 10.w,
                    right: 10.w,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                '${foodList[index].title}',
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
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
                              style: TextStyle(
                                color: Color(0xFF868686),
                                fontSize: 9.h,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              '·',
                              style: TextStyle(
                                color: Color(0xFF868686),
                                fontSize: 9.h,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Image(
                              image: AssetImage('assets/images/clock.png'),
                              height: 10.h,
                              width: 10.w,
                            ),
                            Text(
                              '${foodList[index].clock}min',
                              style: TextStyle(
                                color: Color(0xFF868686),
                                fontSize: 9.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Image(
                    image: AssetImage('assets/images/heart.png'),
                    width: 20.w,
                    height: 23.h,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: foodList.length,
    );
  }
}
