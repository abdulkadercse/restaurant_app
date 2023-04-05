import 'package:container_tab_indicator/container_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_design_task/const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';
import 'create_account.dart';
import 'login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    TabController loginTabController = TabController(length: 2,initialIndex: 1, vsync: this);
    TabController accountCreateTabController = TabController(length: 2,initialIndex: 0, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 50.w, right: 45.w, top: 70.h),
            child: SvgPicture.asset(
              "assets/welcome.svg",
              width: 280.w,
              height: 224.99.h,
            ),
          ),
          SizedBox(
            height: 55.01.h,
          ),
          Text(
            "Welcome",
            style: welcomeTitleStyle,
          ),
          SizedBox(
            height: 8.h,
          ),
          SizedBox(
            width: 245.w,
            height: 42.h,
            child: Text(
              "Before Enjoying Foodmedia Services Please Register First",
              textAlign: TextAlign.center,
              style: welcomeSubTitleStyle.copyWith(fontSize: 14.sp),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 60.w, right: 59.w),
            child: Column(
              children: [
                CustomButton(
                  buttonText: 'Login',
                  buttonDecoration:
                      buttonDecoration.copyWith(color: AppColor.mainColor),
                  buttonTextColor: AppColor.primaryColor,
                  onPressed: () {
                    return showModalBottomSheet(
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                          top: const Radius.circular(36.0).r,
                        )),
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.75,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 24).r,
                                  width: 48.w,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius:
                                      BorderRadius.circular(10).r),
                                ),
                                Container(
                                  child: TabBar(
                                      controller: loginTabController,
                                      indicator: ContainerTabIndicator(
                                        widthFraction: 0.2,
                                        height: 10.h,
                                        padding: EdgeInsets.only(top: 26.h),
                                        color: AppColor.mainColor,
                                      ),
                                      labelColor: AppColor.mainColor,
                                      unselectedLabelColor: Colors.grey,
                                      indicatorColor: AppColor.mainColor,
                                      tabs: const [
                                        Tab(
                                          text: "Create Account",
                                        ),
                                        Tab(
                                          text: "Login",
                                        ),
                                      ]),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    child: TabBarView(
                                      controller: loginTabController,
                                      children: const [
                                        CreateAccount(),
                                        LoginScreen(),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );

                        });
                  },
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomButton(
                  buttonText: 'Create Account',
                  buttonDecoration:
                      buttonDecoration.copyWith(color: AppColor.primaryColor),
                  buttonTextColor: AppColor.mainColor,
                  onPressed: () {
                    return showModalBottomSheet(
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                          top: Radius.circular(36.r),
                        )),
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.75,
                            child: Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 24.h),
                                    width: 48.w,
                                    height: 6.h,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(10).r)),
                                Container(
                                  child: TabBar(
                                      controller: accountCreateTabController,
                                      indicator: ContainerTabIndicator(
                                          widthFraction: 0.2,
                                          height: 10.h,
                                          padding: EdgeInsets.only(top: 26.h),
                                          color: AppColor.mainColor),
                                      labelColor: AppColor.mainColor,
                                      unselectedLabelColor: Colors.grey,
                                      indicatorColor: AppColor.mainColor,
                                      tabs: const [
                                        Tab(
                                          text: "Create Account",
                                        ),
                                        Tab(
                                          text: "Login",
                                        ),
                                      ]),
                                ),
                                Expanded(
                                  child: SizedBox(
                                    width: double.maxFinite,
                                    // height:500,
                                    child: TabBarView(
                                      controller: accountCreateTabController,
                                      children: const [
                                        CreateAccount(),
                                        LoginScreen(),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 36.w, right: 19.w),
            child: SizedBox(
              width: 320.w,
              height: 26.h,
              child: Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(children: [
                    TextSpan(
                      text: 'By logging in or registering, you have agreed to',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: const Color(0xff242323),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'The Terms and Conditions ',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.mainColor,
                      ),
                    ),
                    TextSpan(
                      text: 'And ',
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: const Color(0xff242323),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.mainColor,
                      ),
                    ),
                  ])),
            ),
          )
        ],
      ),
    );
  }
}
