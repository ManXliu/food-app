import 'package:first_flutter_project/provider/user_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyPage extends ConsumerWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userMode = ref.watch(userModelProviderProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: 230.h,
          child: Stack(
            children: [
              Container(
                height: 200.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/user-background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned.fill(
                top: 90,
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
                  child: Container(
                    decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
                    height: 140.h,
                  ),
                ),
              ),
              Positioned.fill(
                top: 130,
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 20.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFCCCBF9).withValues(alpha: 0.45),
                          offset: Offset(0, 10),
                          blurRadius: 30,
                        ),
                      ],
                    ),
                    height: 180.h,
                  ),
                ),
              ),
              Positioned.fill(
                top: -50,
                left: 160,
                right: 160,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  height: 60,
                  child: Image(image: AssetImage("assets/images/avtor.png")),
                ),
              ),
              Positioned.fill(
                top: 80,
                child: Align(
                  alignment: Alignment.center,
                  child: Text('${userMode.value?.username}'),
                ),
              ),
              Positioned.fill(
                top: 150,
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 40),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 9, color: Color(0xFF969696)),
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. ",
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                top: 250,
                bottom: 20,
                child: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 40),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.blue, // 背景色
                            foregroundColor: Colors.white, // 文字和图标颜色
                          ),
                          onPressed: () {},
                          child: Text("Follow"),
                        ),
                      ),
                      Expanded(child: Icon(Icons.air)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
