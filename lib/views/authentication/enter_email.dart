import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/style/style.dart';
import 'package:flutter_ui_design_task/views/authentication/back_email.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';

class EnterEmail extends StatefulWidget {
  const EnterEmail({Key? key}) : super(key: key);

  @override
  State<EnterEmail> createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
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
                "Forget Password",
                style: welcomeTitleStyle.copyWith(
                  fontSize: 20.sp,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Enter your registered email below",
                style: welcomeSubTitleStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 56.h,
              ),
              Text(
                "Email Address",
                style: welcomeTitleStyle.copyWith(
                  fontSize: 14.sp,
                  color: AppColor.titleColor,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              SizedBox(
                height: 48.h,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: appTextFieldDecoration.copyWith(
                    hintText: "Eg namaemail@emailkamu.com",
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(children: [
                    TextSpan(
                      text: 'Remember the password? ',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xff9CA3AF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign in',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.mainColor,
                      ),
                    ),
                  ])),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(left: 36.w, right: 35.w, bottom: 70.h),
                child: CustomButton(
                    buttonText: 'Submit',
                    buttonDecoration:
                        buttonDecoration.copyWith(color: AppColor.mainColor),
                    buttonTextColor: AppColor.primaryColor,
                    onPressed: () {
                      const BackEmail().launch(context);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
