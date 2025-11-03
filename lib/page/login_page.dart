import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final username = useTextEditingController.fromValue(TextEditingValue.empty);
    final password = useTextEditingController.fromValue(TextEditingValue.empty);
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
                    controller: username,
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
                    controller: password,
                  ),
                ),
                Gap(10.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print(username.value.text);
                      print(password.value.text);
                    },
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
