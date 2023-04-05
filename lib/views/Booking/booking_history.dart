import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/const/app_color.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../const/button_decoration.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';
import 'details_screen.dart';

class BookingHistory extends StatefulWidget {
  const BookingHistory({Key? key}) : super(key: key);

  @override
  State<BookingHistory> createState() => _BookingHistoryState();
}

class _BookingHistoryState extends State<BookingHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.mainColor,
        title: Text(
          'Booking History',
          style: welcomeSubTitleStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16.r),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 17.w, top: 24.h),
        child: Column(
          children: [
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
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
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
                            "Ambrosia Hotel & Restaurant",
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
                                  buttonText: 'Check',
                                  buttonDecoration: buttonDecoration.copyWith(
                                      color: AppColor.mainColor),
                                  buttonTextColor: Colors.white,
                                  onPressed: () {
                                    const DetailsScreen().launch(context);
                                  },
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
              height: 6.h,
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
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
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
                                  buttonText: 'Check',
                                  buttonDecoration: buttonDecoration.copyWith(
                                      color: AppColor.mainColor),
                                  buttonTextColor: Colors.white,
                                  onPressed: () {
                                    const DetailsScreen().launch(context);
                                  },
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
              height: 6.h,
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
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
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
                                  buttonText: 'Check',
                                  buttonDecoration: buttonDecoration.copyWith(
                                      color: AppColor.mainColor),
                                  buttonTextColor: Colors.white,
                                  onPressed: () {

                                    const DetailsScreen().launch(context);
                                  },
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
              height: 12.h,
            ),
            Container(
              width: 182.w,
              height: 43.h,
              decoration: BoxDecoration(
                color: Colors.white,
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
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.add,
                      color: const Color(0xff6B7280),
                      size: 18.sp,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                      "Booking more ",
                      style: welcomeSubTitleStyle.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
