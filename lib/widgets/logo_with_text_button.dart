import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWithText extends StatelessWidget {
  final String buttonText;
  final BoxDecoration buttonDecoration;
  final Color buttonTextColor;
  final String images;
  var onPressed;

  LogoWithText(
      {Key? key,
      required this.buttonText,
      required this.buttonDecoration,
      required this.buttonTextColor,
      required this.onPressed,
      required this.images})
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
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              images,
              width: 20.w,
              height: 20.h,
            ),
            Text(
              buttonText,
              style: TextStyle(
                color: buttonTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.sp,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
