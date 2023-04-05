import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_design_task/const/app_color.dart';
import 'package:flutter_ui_design_task/const/button_decoration.dart';
import 'package:flutter_ui_design_task/style/style.dart';
import 'package:flutter_ui_design_task/views/home%20screen/search_screen.dart';
import 'package:flutter_ui_design_task/views/home%20screen/see_all.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../models/product_model.dart';
import '../../models/slider_model.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_dot_indecator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> title = [
    "Chicken Biryani",
    "Sauce Tonkatsu ",
    "burger",
  ];
  List<String> des = [
    "Ambrosia Hotel & Restaurant",
    "Handi Restaurant, Chittagong",
    "Handi Restaurant, Chittagong",
  ];

  List<String> images = [
    "assets/chiken.png",
    "assets/sauce.png",
    "assets/burgers1.png",
  ];

  var selectedIndex = 0;

  List<int> favouriteIndex = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: const Color(0xffF6F6F6),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(
                Icons.menu,
                color: AppColor.titleColor,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
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
              Text(
                "Agrabad 435, Chittagong",
                style: welcomeSubTitleStyle.copyWith(
                  fontSize: 14.sp,
                ),
              )
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
                    image: AssetImage("assets/abdulkader.jpg"),
                  ),
                ),
              ),
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children:    [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: AppColor.mainColor
                ),
                accountName: Text("Abdul kader"),
                accountEmail: Text("kaderhosen2002@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/abdulkader.jpg"),
                ),
              ),


            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    const SearchScreen().launch(context);
                  },
                  child: Center(
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
                ),
                SizedBox(
                  height: 28.h,
                ),
                SizedBox(
                  height: 150.h,
                  child: PageView.builder(
                      onPageChanged: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Container(
                            width: 280.w,
                            height: 120.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28).r,
                                gradient: const LinearGradient(colors: [
                                  Color(0xffFF9F06),
                                  Color(0xffFFE1B4),
                                ])),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10.w, top: 13.h),
                                      child: Image.asset(
                                          sliderDetails[index].logo.toString()),
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            sliderDetails[index].title ?? "",
                                            style:
                                                welcomeSubTitleStyle.copyWith(
                                              fontSize: 16.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          Text(
                                            sliderDetails[index].des ?? "",
                                            style:
                                                welcomeSubTitleStyle.copyWith(
                                              fontSize: 7.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "Order",
                                                style: welcomeSubTitleStyle
                                                    .copyWith(
                                                  fontSize: 8.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.white,
                                                size: 8.sp,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Image.asset(sliderDetails[index].images ?? "")
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                        3,
                        (index) => CustomDotIndecator(
                            isActive: selectedIndex == index ? true : false))
                  ],
                ),
                SizedBox(
                  height: 18.h,
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
                    ).onTap(() => const SeeAllScreen().launch(context))
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                // SizedBox(
                //   height: 198.h,
                //   child: ListView.builder(
                //       itemCount: 3,
                //       shrinkWrap: true,
                //       scrollDirection: Axis.horizontal,
                //       itemBuilder: (context, index) {
                //         return Padding(
                //           padding: EdgeInsets.only(
                //             right: 12.w,
                //           ),
                //           child: Container(
                //             width: 148.w,
                //             height: 196.h,
                //             decoration: BoxDecoration(
                //               color: Colors.white,
                //               borderRadius: BorderRadius.circular(16).r,
                //             ),
                //             child: Padding(
                //               padding: EdgeInsets.only(
                //                   left: 10.w,
                //                   right: 10.w,
                //                   top: 10.h,
                //                   bottom: 20.h),
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Image.asset(
                //                     images[index],
                //                     width: 128.w,
                //                     height: 103.3.h,
                //                   ),
                //                   SizedBox(
                //                     height: 15.92.h,
                //                   ),
                //                   Text(
                //                     title[index],
                //                     style: welcomeSubTitleStyle.copyWith(
                //                       fontWeight: FontWeight.w500,
                //                       fontSize: 16.sp,
                //                     ),
                //                   ),
                //                   SizedBox(
                //                     height: 3.98.h,
                //                   ),
                //                   Row(
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     children: [
                //                       const Icon(
                //                         Icons.location_on,
                //                         color: AppColor.mainColor,
                //                         size: 18,
                //                       ),
                //                       SizedBox(
                //                         width: 5.7.w,
                //                       ),
                //                       SizedBox(
                //                         width: 95.w,
                //                         height: 23.89.h,
                //                         child: Text(
                //                           des[index],
                //                           style: welcomeSubTitleStyle.copyWith(
                //                             fontSize: 9.sp,
                //                             fontWeight: FontWeight.w400,
                //                           ),
                //                         ),
                //                       )
                //                     ],
                //                   )
                //                 ],
                //               ),
                //             ),
                //           ),
                //         );
                //       }),
                // ),

//model class data
                SizedBox(
                  height: 198.h,
                  child: ListView.builder(
                      itemCount: productList.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            right: 12.w,
                          ),
                          child: Container(
                            width: 148.w,
                            height: 196.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16).r,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Center(
                                      child: Image.asset(
                                        productList[index].image ?? "",
                                        width: 128.w,
                                        height: 103.3.h,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          // Visibility(
                                          //   visible:productList[index].isNewProduct! ,
                                          //   child: Container(
                                          //     width: 40,
                                          //     height: 30,
                                          //     decoration: BoxDecoration(
                                          //         color: Colors.grey
                                          //     ),child:const Center(child: Text("new")),
                                          //   ),
                                          // ),

                                          Container(
                                            width: 50.w,
                                            height: 30.h,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight:
                                                        const Radius.circular(
                                                                25)
                                                            .r),
                                                // color: Colors.red.shade400
                                                color: const Color(0xff32B768)),
                                            child: Center(
                                                child: Text(
                                              productList[index]
                                                      .discountPrice ??
                                                  "",
                                              style: const TextStyle(
                                                color: Colors.white,
                                              ),
                                            )),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                favouriteIndex.contains(index)
                                                    ? favouriteIndex
                                                        .remove(index)
                                                    : favouriteIndex.add(index);
                                              });
                                            },
                                            child: Container(
                                              width: 30.w,
                                              height: 30.h,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white),
                                              child: Icon(
                                                favouriteIndex.contains(index)
                                                    ? Icons.favorite
                                                    : Icons.favorite_border,
                                                color: Colors.red,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15.92.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 10.w,
                                    right: 10.w,
                                    // top: 10.h,
                                    // bottom: 20.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        productList[index].title ?? "",
                                        style: welcomeSubTitleStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3.98.h,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.location_on,
                                            color: AppColor.mainColor,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 5.7.w,
                                          ),
                                          SizedBox(
                                            width: 95.w,
                                            height: 23.89.h,
                                            child: Text(
                                              productList[index].location ?? "",
                                              style:
                                                  welcomeSubTitleStyle.copyWith(
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
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
                                      const Icon(
                                        Icons.location_on,
                                        color: AppColor.mainColor,
                                        size: 20,
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
                  height: 10.h,
                ),
              ],
            ),
          ),
        ));
  }
}
