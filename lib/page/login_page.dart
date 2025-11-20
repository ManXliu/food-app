import 'package:first_flutter_project/provider/login_status_provider.dart';
import 'package:first_flutter_project/provider/user_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final username = useTextEditingController.fromValue(TextEditingValue.empty);
    final password = useTextEditingController.fromValue(TextEditingValue.empty);
    final loginStatusInfo = ref.watch(loginStatusProviderProvider);
    useEffect(() {
      if (loginStatusInfo == LoginStatus.loading) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (context.mounted) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const AlertDialog(
                content: Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 16),
                    Text("登录中，请稍候..."),
                  ],
                ),
              ),
            );
          }
        });
      } else {
        if (loginStatusInfo == LoginStatus.success) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (context.mounted) {
              context.pop();
              Fluttertoast.showToast(
                msg: "登录成功",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.lime,
                textColor: Colors.white,
                fontSize: 16.0,
              );
              ref
                  .read(loginStatusProviderProvider.notifier)
                  .reset(LoginStatus.idle);
              context.go("/");
            }
          });
        }
        if (loginStatusInfo == LoginStatus.error) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (context.mounted) {
              context.pop();
              Fluttertoast.showToast(
                msg: "登录失败",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0,
              );
              ref
                  .read(loginStatusProviderProvider.notifier)
                  .reset(LoginStatus.idle);
            }
          });
        }
      }
    }, [loginStatusInfo]);
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
                    onPressed: () async {
                      if (loginStatusInfo == LoginStatus.idle) {
                        await ref
                            .read(userModelProviderProvider.notifier)
                            .login(
                              username: username.text,
                              password: password.text,
                            );
                      }
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
