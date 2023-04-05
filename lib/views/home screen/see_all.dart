import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/const/app_color.dart';
import 'package:flutter_ui_design_task/const/button_decoration.dart';
import 'package:flutter_ui_design_task/style/style.dart';
import '../../widgets/custom_button.dart';

class SeeAllScreen extends StatefulWidget {
  const SeeAllScreen({Key? key}) : super(key: key);

  @override
  State<SeeAllScreen> createState() => _SeeAllScreenState();
}

class _SeeAllScreenState extends State<SeeAllScreen> {
  List<String> title = [
    "Chicken Biryani",
    "Chicken Biryani",
    "burger",
  ];
  List<String> des = [
    "Ambrosia Hotel & Restaurant",
    "Handi Restaurant, Chittagong",
    "Burger",
  ];

  List<String> images = [
    "assets/chiken.png",
    "assets/sauce.png",
    "assets/burger1.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.menu,
          color: AppColor.titleColor,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on,
              color: AppColor.mainColor,
            ),
            SizedBox(
              width: 4.w,
            ),
            Text("Agrabad 435, Chittagong",
                style: welcomeSubTitleStyle.copyWith(fontSize: 14.sp))
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.w),
            child: Container(
              width: 32.w,
              height: 32.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("assets/abdulkader.jpg"))),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 17.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 280.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffE6E7E9),
                      borderRadius: BorderRadius.circular(11).r),
                  child: Padding(
                    padding: EdgeInsets.only(left: 27.w),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.search,
                          color: Color(0xff9CA3AF),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          "Search",
                          style: welcomeSubTitleStyle.copyWith(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today New Arivable",
                        style: welcomeTitleStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "Best of the today  food list update",
                        style: welcomeSubTitleStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: welcomeSubTitleStyle.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff89909E),
                        size: 20.sp,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 198.h,
                child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 12.0,
                        ),
                        child: Container(
                          width: 148.w,
                          height: 196.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16).r,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.w,
                                right: 10.w,
                                top: 10.h,
                                bottom: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "assets/chiken.png",
                                  width: 128.w,
                                  height: 103.3.h,
                                ),
                                SizedBox(
                                  height: 15.92.h,
                                ),
                                Text(
                                  "Chicken Biryani",
                                  style: welcomeSubTitleStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 3.98.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColor.mainColor,
                                      size: 18.sp,
                                    ),
                                    SizedBox(
                                      width: 5.7.w,
                                    ),
                                    SizedBox(
                                      width: 95.w,
                                      height: 23.89.h,
                                      child: Text(
                                        "Ambrosia Hotel & Restaurant",
                                        style: welcomeSubTitleStyle.copyWith(
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 36.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Booking Restaurant",
                        style: welcomeTitleStyle.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Text(
                        "Check your city Near by Restaurant",
                        style: welcomeSubTitleStyle.copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: welcomeSubTitleStyle.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xff89909E),
                        size: 20.sp,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 340.w,
                height: 88.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 12.w, top: 12.h, bottom: 12.h),
                      child: Image.asset(
                        "assets/hotel.png",
                        width: 64.w,
                        height: 64.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, top: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hotel Zaman Restaurant",
                            style: welcomeTitleStyle.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 137.w,
                                height: 24.h,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColor.mainColor,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      "kazi Deiry, Taiger Pass \nChittagong",
                                      style: welcomeSubTitleStyle.copyWith(
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 88.w,
                                height: 28.h,
                                child: CustomButton(
                                  buttonText: 'Book',
                                  buttonDecoration: buttonDecoration.copyWith(
                                      color: AppColor.mainColor),
                                  buttonTextColor: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 340.w,
                height: 88.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10).r,
                    color: Colors.white),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 12.w, top: 12.h, bottom: 12.h),
                      child: Image.asset(
                        "assets/tava.png",
                        width: 64.w,
                        height: 64.h,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.w, top: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tava Restaurant",
                            style: welcomeTitleStyle.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 137.w,
                                height: 24.h,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColor.mainColor,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      "Zakir Hossain Rd,\n Chittagong",
                                      style: welcomeSubTitleStyle.copyWith(
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 88.w,
                                height: 28.h,
                                child: CustomButton(
                                  buttonText: 'Book',
                                  buttonDecoration: buttonDecoration.copyWith(
                                      color: AppColor.mainColor),
                                  buttonTextColor: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 340.w,
                height: 88.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10).r,
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 12.w, top: 12.h, bottom: 12.h),
                      child: Image.asset(
                        "assets/haatkhola.png",
                        width: 64.w,
                        height: 64.h,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Haatkhola",
                            style: welcomeTitleStyle.copyWith(
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 137.w,
                                height: 24.h,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColor.mainColor,
                                      size: 20.sp,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      "6 Surson Road, \nChittagong",
                                      style: welcomeSubTitleStyle.copyWith(
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 88.w,
                                height: 28.h,
                                child: CustomButton(
                                  buttonText: 'Book',
                                  buttonDecoration: buttonDecoration.copyWith(
                                      color: AppColor.mainColor),
                                  buttonTextColor: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
