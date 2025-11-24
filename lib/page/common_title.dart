import 'package:flutter/material.dart';

class CommonTitle extends StatelessWidget {
  CommonTitle({
    super.key,
    this.leftWight,
    this.rightWight,
    required this.title,
  });

  final String title;

  Widget? rightWight;

  Widget? leftWight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ?leftWight,
        Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
          ),
        ),
        ?rightWight,
      ],
    );
  }
}
