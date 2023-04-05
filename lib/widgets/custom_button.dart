import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final BoxDecoration buttonDecoration;
  final Color buttonTextColor;
  var onPressed;

  CustomButton(
      {Key? key,
      required this.buttonText,
      required this.buttonDecoration,
      required this.buttonTextColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50.h,
        width: double.infinity,
        decoration: buttonDecoration,
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
            color: buttonTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 14.sp,
          ),
        )),
      ),
    );
  }
}
