import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/views/authentication/success.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 117.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Change New Password",
                style: welcomeTitleStyle.copyWith(
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "Enter a different password with the previous",
                style: welcomeSubTitleStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 56.h,
              ),
              Text(
                "New Password",
                style: welcomeTitleStyle.copyWith(
                  fontSize: 14.sp,
                  color: AppColor.subTitleColor,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              SizedBox(
                height: 48.h,
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  obscuringCharacter: ".",
                  decoration: appTextFieldDecoration.copyWith(
                      hintText: 'Enter your password'),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Confirm Password",
                style: welcomeTitleStyle.copyWith(
                  fontSize: 14.sp,
                  color: AppColor.subTitleColor,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              SizedBox(
                height: 48.h,
                child: TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  obscuringCharacter: ".",
                  decoration: appTextFieldDecoration.copyWith(
                      hintText: 'Enter your password'),
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 35.w, right: 34.w, bottom: 70.h),
                child: CustomButton(
                    buttonText: 'Back Email',
                    buttonDecoration:
                        buttonDecoration.copyWith(color: AppColor.mainColor),
                    buttonTextColor: AppColor.primaryColor,
                    onPressed: () {
                      const Success().launch(context);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
