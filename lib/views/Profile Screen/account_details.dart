import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/const/app_color.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../style/style.dart';

class AccountDetaile extends StatefulWidget {
  const AccountDetaile({Key? key}) : super(key: key);

  @override
  State<AccountDetaile> createState() => _AccountDetaileState();
}

class _AccountDetaileState extends State<AccountDetaile> {
  //phone call
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        title: const Text("Account Information"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          CircleAvatar(
            radius: 80.r,
            backgroundImage: const AssetImage("assets/abdulkader.jpg"),
          ),
          SizedBox(
            height: 10.h,
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
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
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
                          "Md.Abdul kader",
                          style: welcomeTitleStyle.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
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
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Contact Me",
                          style: welcomeTitleStyle.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        _makePhoneCall("+8801630437666");
                      },
                      child: const Icon(
                        Icons.call,
                        color: Color(0xff374151),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
