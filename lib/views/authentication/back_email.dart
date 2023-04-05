import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/views/authentication/password_screen.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';

class BackEmail extends StatefulWidget {
  const BackEmail({Key? key}) : super(key: key);

  @override
  State<BackEmail> createState() => _BackEmailState();
}

class _BackEmailState extends State<BackEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 135.h,
          ),
          Center(child: Image.asset("assets/success.png")),
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
                "Please check your email for create a new password",
                textAlign: TextAlign.center,
                style: welcomeSubTitleStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Center(
            child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(children: [
                  TextSpan(
                    text: "Can't get email? ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xff6B7280),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: 'Resubmit ',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColor.mainColor),
                  ),
                ])),
          ),
          SizedBox(
            height: 137.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 60.w, right: 59.w, ),
            child: CustomButton(
                buttonText: 'Back Email',
                buttonDecoration:
                    buttonDecoration.copyWith(color: AppColor.mainColor),
                buttonTextColor: AppColor.primaryColor,
                onPressed: () {
                  const PasswordScreen().launch(context);
                }),
          )
        ],
      ),
    );
  }
}
