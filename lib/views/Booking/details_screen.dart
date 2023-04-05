import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/app_color.dart';
import '../../const/button_decoration.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20.0).r,
              topRight: const Radius.circular(20.0).r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.w),
            topRight: Radius.circular(30.w),
          ),
          child: SizedBox(
            height: 85.h,
            child: Center(
              child: SizedBox(
                height: 33.h,
                width: 232.w,
                child: CustomButton(
                  buttonText: 'Booking',
                  buttonDecoration:
                      buttonDecoration.copyWith(color: AppColor.mainColor),
                  buttonTextColor: Colors.white,
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.mainColor,
        title: Text('Details Restaurant',
            style: welcomeSubTitleStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ).onTap(() => finish(context)),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: const Radius.circular(16).r,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 8.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 375.w,
                height: 358.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16).r,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 18.w, right: 18.w, top: 20.h, bottom: 24.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tava Restaurant',
                        style: welcomeTitleStyle.copyWith(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 230.w,
                        height: 16.h,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: AppColor.mainColor,
                              size: 20,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              "kazi Deiry, Taiger Pass,Chittagong",
                              style: welcomeSubTitleStyle.copyWith(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Center(
                          child: Image.asset(
                        "assets/tava_restaurant.png",
                        width: 339.w,
                        height: 182.h,
                      )),
                      SizedBox(
                        height: 24.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.alarm,
                                      color: AppColor.mainColor,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      "Open today",
                                      style: welcomeSubTitleStyle.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xff6B7280),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "10:00 AM - 12:00 PM",
                                  style: welcomeSubTitleStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp,
                                    color: AppColor.titleColor,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.directions,
                                  color: Color(0xff2C8DFF),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 7.w,
                                ),
                                Text(
                                  "Visit the Restaurant",
                                  style: welcomeSubTitleStyle.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff2C8DFF),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 400.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16).r,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 18.w, right: 17.w, top: 20.h),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "List other restaurant",
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
                                  color: AppColor.mainColor,
                                ),
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff89909E),
                                size: 20,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      Center(
                        child: Container(
                          width: 340.w,
                          height: 88.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10).r,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      0, 3) // changes position of shadow
                                  ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 12.0.w, top: 12.h, bottom: 12.h),
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
                                                style: welcomeSubTitleStyle
                                                    .copyWith(
                                                  fontSize: 10.sp,
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
                                            buttonText: 'Check',
                                            buttonDecoration:
                                                buttonDecoration.copyWith(
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
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Center(
                        child: Container(
                          width: 340.w,
                          height: 88.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10).r,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.25),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3)),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 12.w, top: 12.h, bottom: 12.h),
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
                                                style: welcomeSubTitleStyle
                                                    .copyWith(
                                                  fontSize: 10.sp,
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
                                            buttonText: 'Check',
                                            buttonDecoration:
                                                buttonDecoration.copyWith(
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
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Center(
                        child: Container(
                          width: 340.w,
                          height: 88.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 12.0, top: 12, bottom: 12),
                                child: Image.asset(
                                  "assets/hotel.png",
                                  width: 64.w,
                                  height: 64.h,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, top: 20),
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
                                        Container(
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
                                                style: welcomeSubTitleStyle
                                                    .copyWith(
                                                  fontSize: 10.sp,
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
                                            buttonText: 'Check',
                                            buttonDecoration:
                                                buttonDecoration.copyWith(
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
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
