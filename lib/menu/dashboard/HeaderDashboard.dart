import 'package:belajar_admin/controller/MenuController.dart';
import 'package:belajar_admin/menu/dashboard/SearchField.dart';
import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:belajar_admin/utils/ImageData.dart';
import 'package:belajar_admin/utils/Responsive.dart';
import 'package:belajar_admin/utils/Style.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hovering/hovering.dart';
import 'package:provider/provider.dart';

class HeaderDashboard extends StatefulWidget {
  const HeaderDashboard({Key? key}) : super(key: key);

  @override
  State<HeaderDashboard> createState() => _HeaderDashboardState();
}

class _HeaderDashboardState extends State<HeaderDashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (!Responsive.isDesktop(context))
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: context.read<MenuController>().controlMenu,
              ),
            if (!Responsive.isMobile(context))
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back, Olivia",
                      style: interMedium.copyWith(
                          fontSize: 18.sp,
                          color: ColorResources.COLOR_TITLE_MENU),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      "Your current sales summary and activity.",
                      style: interRegular.copyWith(
                          fontSize: 10.sp,
                          color: ColorResources.COLOR_GRAY_UNACTIVE_ICON),
                    ),
                  ],
                ),
              ),
            if (!Responsive.isMobile(context))
              Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
            Expanded(
                child: Container(
              margin: Responsive.isDesktop(context)
                  ? EdgeInsets.only(right: 40.h)
                  : EdgeInsets.only(right: 10.h),
              height: 35.h,
              child: SearchField(),
            )),
          ],
        ),
        if (Responsive.isMobile(context))
          Container(
            margin: EdgeInsets.only(top: 4.h),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                Text(
                  "Welcome back, Olivia",
                  style: interMedium.copyWith(
                      fontSize: 18.sp, color: ColorResources.COLOR_TITLE_MENU),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "Your current sales summary and activity.",
                  style: interRegular.copyWith(
                      fontSize: 10.sp,
                      color: ColorResources.COLOR_GRAY_UNACTIVE_ICON),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
