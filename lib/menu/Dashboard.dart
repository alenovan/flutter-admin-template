import 'package:belajar_admin/menu/dashboard/component/BarChartSample6.dart';
import 'package:belajar_admin/menu/dashboard/component/CardStatusCourse.dart';
import 'package:belajar_admin/menu/dashboard/component/HomeWorkList.dart';
import 'package:belajar_admin/menu/dashboard/component/RadarChartSample1.dart';
import 'package:belajar_admin/menu/dashboard/headerdashboard.dart';
import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:belajar_admin/utils/ImageData.dart';
import 'package:belajar_admin/utils/Responsive.dart';
import 'package:belajar_admin/utils/ResponsiveGridView.dart';
import 'package:belajar_admin/utils/Style.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.COLOR_WHITE,
      body: SafeArea(
        child: Container(
          padding: Responsive.isDesktop(context)
              ? EdgeInsets.all(30.h)
              : EdgeInsets.all(10.h),
          child: ListView(
            children: [
              HeaderDashboard(),
              SizedBox(
                height: 20.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Container(
                          child: Stack(
                            children: [
                              Container(
                                child: Image.asset(
                                    fit: BoxFit.fitWidth,
                                    ImageData.BACKGROUND_DASHBOARD_2),
                              ),
                              // Responsive(
                              //   mobile: Align(
                              //     alignment: Alignment.centerRight,
                              //     child: Container(
                              //       width: 150.h,
                              //       margin:
                              //           EdgeInsets.only(top: 15.h, right: 20.h),
                              //       child: Column(
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           Text(
                              //             "Join Now and Get Discount Voucher Up To 20%",
                              //             style: interBold.copyWith(
                              //                 color: ColorResources.COLOR_WHITE,
                              //                 fontSize: 12.sp),
                              //           ),
                              //           SizedBox(
                              //             height: 2.h,
                              //           ),
                              //           Text(
                              //             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                              //             style: interLight.copyWith(
                              //                 color: ColorResources.COLOR_WHITE,
                              //                 fontSize: 8.sp),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              //   tablet: Align(
                              //     alignment: Alignment.centerRight,
                              //     child: Container(
                              //       width: 200.h,
                              //       margin:
                              //           EdgeInsets.only(top: 50.h, right: 30.h),
                              //       child: Column(
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           Text(
                              //             "Join Now and Get Discount Voucher Up To 20%",
                              //             style: interBold.copyWith(
                              //                 color: ColorResources.COLOR_WHITE,
                              //                 fontSize: 15.sp),
                              //           ),
                              //           SizedBox(
                              //             height: 5.h,
                              //           ),
                              //           Text(
                              //             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                              //             style: interLight.copyWith(
                              //                 color: ColorResources.COLOR_WHITE,
                              //                 fontSize: 10.sp),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              //   desktop: Align(
                              //     alignment: Alignment.centerRight,
                              //     child: Container(
                              //       width: 400.h,
                              //       margin: EdgeInsets.only(
                              //           top: 100.h, right: 70.h),
                              //       child: Column(
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           Text(
                              //             "Join Now and Get Discount Voucher Up To 20%",
                              //             style: interBold.copyWith(
                              //                 color: ColorResources.COLOR_WHITE,
                              //                 fontSize: 20.sp),
                              //           ),
                              //           SizedBox(
                              //             height: 20.h,
                              //           ),
                              //           Text(
                              //             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                              //             style: interLight.copyWith(
                              //                 color: ColorResources.COLOR_WHITE,
                              //                 fontSize: 12.sp),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Responsive(
                          mobile: ResponsiveGridView(
                            crossAxisCount: _size.width < 650 ? 2 : 3,
                            childAspectRatio:
                                _size.width < 650 && _size.width > 350
                                    ? 1.2
                                    : 1,
                            itemCount: 3,
                            child: CardStatusCourse(
                              title: "Complate Course",
                              count: "28",
                            ),
                          ),
                          tablet: Row(
                            children: [
                              Flexible(
                                child: CardStatusCourse(
                                  title: "Complate Course",
                                  count: "28",
                                ),
                              ),
                              SizedBox(
                                width: 1.h,
                              ),
                              Flexible(
                                child: CardStatusCourse(
                                  title: "In Progress Course",
                                  count: "14",
                                ),
                              ),
                              SizedBox(
                                width: 1.h,
                              ),
                              Flexible(
                                child: CardStatusCourse(
                                  title: "Upcoming",
                                  count: "98",
                                ),
                              ),
                            ],
                          ),
                          desktop: Row(
                            children: [
                              Flexible(
                                child: CardStatusCourse(
                                  title: "Complate Course",
                                  count: "28",
                                ),
                              ),
                              SizedBox(
                                width: 20.h,
                              ),
                              Flexible(
                                child: CardStatusCourse(
                                  title: "In Progress Course",
                                  count: "14",
                                ),
                              ),
                              SizedBox(
                                width: 20.h,
                              ),
                              Flexible(
                                child: CardStatusCourse(
                                  title: "Upcoming",
                                  count: "98",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 20.h),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                      color:
                                          ColorResources.COLOR_STROKE_SIDEBAR,
                                      width: 2),
                                ),
                                elevation: 0.4,
                                child: Container(
                                  padding: EdgeInsets.all(20.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Learning Activity",
                                                  style: interMedium.copyWith(
                                                      color: ColorResources
                                                          .COLOR_TITLE_MENU,
                                                      fontSize: 15.sp),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  "Track how your rating compares to your industry average.",
                                                  style: interRegular.copyWith(
                                                      color: ColorResources
                                                          .COLOR_GRAY_UNACTIVE_ICON,
                                                      fontSize: 10.sp),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Icon(Boxicons
                                                .bx_dots_vertical_rounded),
                                          )
                                        ],
                                      ),
                                      BarChartSample6(),
                                    ],
                                  ),
                                ))),
                        if (Responsive.isMobile(context))
                          Container(
                            height: 100.h,
                            color: ColorResources.COLOR_GRAY_UNACTIVE_ICON,
                          ),
                      ],
                    ),
                  ),
                  if (!Responsive.isMobile(context)) SizedBox(width: 20.h),
                  if (!Responsive.isMobile(context))
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "My homework",
                                        style: interMedium.copyWith(
                                            color:
                                                ColorResources.COLOR_TITLE_MENU,
                                            fontSize: 14.sp),
                                      ),
                                      Container(
                                        child: Icon(
                                            Boxicons.bx_dots_vertical_rounded),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(children: [
                                    HomeWorkList(),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    HomeWorkList(),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    HomeWorkList(),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                  ]),
                                ),
                                Container(
                                    margin: EdgeInsets.only(top: 20.h),
                                    child: Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          side: BorderSide(
                                              color: ColorResources
                                                  .COLOR_STROKE_SIDEBAR,
                                              width: 2),
                                        ),
                                        elevation: 0.4,
                                        child: Container(
                                          padding: EdgeInsets.all(20.h),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Score Activity",
                                                        style: interMedium.copyWith(
                                                            color: ColorResources
                                                                .COLOR_TITLE_MENU,
                                                            fontSize: 13.sp),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    child: Icon(Boxicons
                                                        .bx_dots_vertical_rounded),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 22.h,
                                              ),
                                              RadarChartSample1()
                                            ],
                                          ),
                                        ))),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
