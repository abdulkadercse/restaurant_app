import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final welcomeTitleStyle = TextStyle(
  color: const Color(0xff1F2937),
  fontSize: 24.sp,
  fontWeight: FontWeight.w600,
);
final welcomeSubTitleStyle =TextStyle(
    color: const Color(0xff4B5563),
    fontWeight: FontWeight.w400,
    fontSize: 12.sp);

final appTextFieldDecoration = InputDecoration(
    hintText: "Enter your full name",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    )
);