import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcfcfc),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 10.h,
              horizontal: 10.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(20.h),
                Text(
                  "登录",
                  style: TextStyle(fontSize: 20.h, fontWeight: FontWeight.w400),
                ),
                Container(
                  padding: EdgeInsetsGeometry.symmetric(vertical: 5.h),
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text('用户名'),
                ),
                SizedBox(
                  height: 40.h,
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Container(
                  padding: EdgeInsetsGeometry.symmetric(vertical: 5.h),
                  alignment: AlignmentGeometry.centerLeft,
                  child: Text('密码'),
                ),
                SizedBox(
                  height: 40.h,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                Gap(10.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(),
                    child: Text("登录"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
