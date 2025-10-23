import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('用户名'),
                SizedBox(
                  height: 40.h,
                  child: TextField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("登录"),
                        style: ButtonStyle(),
                      ),
                    ],
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
