import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/style/style.dart';
import 'package:badges/badges.dart' as badges;
import 'package:nb_utils/nb_utils.dart';
import '../../const/button_decoration.dart';
import '../../widgets/custom_button.dart';
import 'account_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F6F6),
        body: Padding(
          padding: EdgeInsets.only(left: 25.w, right: 23.w, top: 61.h),
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 327.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11).r,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 44.w,
                        height: 44.h,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/abdulkader.jpg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Abdul Kader",
                              style: welcomeSubTitleStyle.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "kaderhosen2002@gmail.com",
                              style: welcomeSubTitleStyle.copyWith(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      badges.Badge(
                        badgeContent: const Text(
                          '3',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: const BoxDecoration(
                            color: Color(0xffF9F9F9),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: Color(0xff374151),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Container(
                  width: 327.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11).r,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 3) // changes position of shadow
                          ),
                    ],
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/account.png",
                              width: 24.w,
                              height: 24.h,
                              color: const Color(0xff374151),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              "Account setting",
                              style: welcomeTitleStyle.copyWith(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            const AccountDetaile().launch(context);
                          },
                          child: Image.asset(
                            "assets/edit.png",
                            width: 19.w,
                            height: 19.h,
                            color: const Color(0xff374151),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Center(
                child: Container(
                  width: 329.w,
                  height: 196.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(11).r,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(18.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/language.png",
                                  width: 18.w,
                                  height: 17.h,
                                  color: const Color(0xff374151),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                Text(
                                  "Language",
                                  style: welcomeSubTitleStyle.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff374151),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Color(0xff374151),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/feedback.png",
                                  width: 18.w,
                                  height: 17.h,
                                  color: const Color(0xff374151),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                Text(
                                  "Feedback",
                                  style: welcomeSubTitleStyle.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff374151),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Color(0xff374151),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/rate_us.png",
                                  width: 18.w,
                                  height: 17.h,
                                  color: const Color(0xff374151),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                Text(
                                  "Rate us",
                                  style: welcomeSubTitleStyle.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff374151),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Color(0xff374151),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/new_version.png",
                                  width: 18.w,
                                  height: 17.h,
                                  color: const Color(0xff374151),
                                ),
                                SizedBox(
                                  width: 24.w,
                                ),
                                Text(
                                  "New version",
                                  style: welcomeSubTitleStyle.copyWith(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff374151),
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Color(0xff374151),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: 111.w,
                height: 35.h,
                child: CustomButton(
                  buttonText: 'logout',
                  buttonDecoration: buttonDecoration.copyWith(
                    color: Colors.redAccent,
                  ),
                  buttonTextColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
