import 'package:belajar_admin/menu/dashboard/headerdashboard.dart';
import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:belajar_admin/utils/Responsive.dart';
import 'package:belajar_admin/utils/ResponsiveGridView.dart';
import 'package:belajar_admin/utils/Style.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardStatusCourse extends StatelessWidget {
  final String title, count;

  const CardStatusCourse({Key? key, required this.title, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: ColorResources.COLOR_STROKE_SIDEBAR, width: 2),
            ),
            elevation: 0.4,
            child: Container(
              padding: EdgeInsets.all(20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: interMedium.copyWith(
                              color: ColorResources.COLOR_GRAY_UNACTIVE_ICON,fontSize: 10.sp),
                        ),
                      ),
                      Container(
                        child: Icon(Boxicons.bx_dots_vertical_rounded),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    child: Text(
                      count,
                      style: interSemiBold.copyWith(
                          color: ColorResources.COLOR_BLACK, fontSize: 25.sp),
                    ),
                  )
                ],
              ),
            )));
  }
}
