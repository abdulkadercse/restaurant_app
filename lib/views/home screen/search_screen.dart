import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../style/style.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Image.asset(
            'assets/google_map.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 20.w,
            right: 15.w,
            top: 30.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      finish(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Color(0xff2C3E50),
                      size: 28,
                    )),
                Container(
                  width: 232.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                Container(
                  width: 32.w,
                  height: 32.h,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/abdulkader.jpg"))),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
