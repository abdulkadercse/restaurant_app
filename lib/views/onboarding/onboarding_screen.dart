import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_design_task/const/app_color.dart';
import 'package:flutter_ui_design_task/views/authentication/welcome_screen.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../style/style.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final RxInt _currentIndex = 0.obs;
  List<String> images = [
    "assets/onboarding1.svg",
    "assets/onboarding2.svg",
    "assets/onboarding3.svg",
  ];

  List<String> title = [
    "Nearby restaurants",
    "Select the Favorites Menu",
    "Good food at a cheap price",
  ];

  List<String> description = [
    "You don't have to go far to find a good restaurant,\n we have provided all the restaurants that is\n near you",
    "Now eat well, don't leave the house,You can choose your favorite food only with one click",
    "You can eat at expensive restaurants with affordable price",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 150.h,
          ),
          Obx(() => SvgPicture.asset(
                images[_currentIndex.toInt()],
                width: 300.w,
                height: 178.76.h,
              )),
          SizedBox(
            height: 79.24.h,
          ),
          Obx(
            () => Center(
              child: Text(
                title[_currentIndex.toInt()],
                style: welcomeTitleStyle,
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Obx(
            () => SizedBox(
              height: 48.h,
              width: 286.w,
              child: Text(
                description[_currentIndex.toInt()],
                textAlign: TextAlign.center,
                style: welcomeSubTitleStyle,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 28.w, right: 27.w, bottom: 44.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: const Color(0xff4B5563)),
                  ),
                ),
                Obx(
                  () => DotsIndicator(
                    dotsCount: title.length,
                    position: _currentIndex.toDouble(),
                    decorator: const DotsDecorator(
                        color: Color(0xffE6E6E6), // Inactive color
                        activeColor: AppColor.mainColor),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (_currentIndex == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()),
                      );
                    } else {
                      _currentIndex + 1;
                    }
                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 24,
                    color: AppColor.mainColor,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
