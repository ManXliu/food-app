import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  CommonTitle({super.key, this.widget, required this.title});

  final String title;

  Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
        ?widget,
      ],
    );
  }
}
