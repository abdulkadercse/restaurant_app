import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 133.h,
          ),
          Center(
            child: Image.asset("assets/success.png"),
          ),
          SizedBox(
            height: 29.h,
          ),
          Center(
              child: Text(
            "Success",
            style: welcomeTitleStyle.copyWith(
              color: AppColor.titleColor,
            ),
          )),
          SizedBox(
            height: 8.h,
          ),
          Center(
            child: SizedBox(
              width: 283.w,
              height: 42.h,
              child: Text(
                "Congratulations your password has been changed",
                textAlign: TextAlign.center,
                style: welcomeSubTitleStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 201.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 60.w, right: 55.w,),
            child: CustomButton(
                buttonText: 'Sign in',
                buttonDecoration: buttonDecoration.copyWith(
                  color: AppColor.mainColor,
                ),
                buttonTextColor: AppColor.primaryColor,
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}
