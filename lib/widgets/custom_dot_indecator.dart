import 'package:flutter/material.dart';
import '../const/app_color.dart';

class CustomDotIndecator extends StatelessWidget {
  final bool isActive;
  const CustomDotIndecator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 350),
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      width: 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: isActive ? AppColor.mainColor : Colors.grey,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
