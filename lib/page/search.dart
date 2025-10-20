import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsGeometry.only(left: 20.w, right: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.h),
          Center(
            child: Text(
              "Search",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "What is in your kitchen?",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          Text("Enter some ingredients"),
          SizedBox(height: 10.h),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              hintText: 'Type your ingredients',
              hintStyle: TextStyle(color: Color(0xFFAEAEAE)),
            ),
          ),

          SizedBox(height: 10.h),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 每行显示的项目数
                crossAxisSpacing: 10, // 水平间距
                mainAxisSpacing: 10, // 垂直间距
                childAspectRatio: 1.0, // 子项宽高比
              ),
              itemCount: 20, // 项目总数
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/food1.png'),
                    ),
                  ),
                  child: Center(
                    child: Text('Chorizo & mozzarella gnocchi bake'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
