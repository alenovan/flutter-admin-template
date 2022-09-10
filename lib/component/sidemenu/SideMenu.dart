import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:belajar_admin/utils/ImageData.dart';
import 'package:belajar_admin/utils/Style.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hovering/hovering.dart';

class SideMenu extends StatefulWidget {
  final ValueChanged<int> onPageSelected;

  SideMenu({
    Key? key,
    required this.onPageSelected,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenu();
}

class _SideMenu extends State<SideMenu> {
  var _page_active = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
                width: 1.sp, color: ColorResources.COLOR_STROKE_SIDEBAR),
          ),
          color: ColorResources.COLOR_WHITE,
        ),
        child: ListView(
          children: [
            Container(
              height: 70.h,
              child: Container(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'e',
                          style: interBold.copyWith(
                              color: ColorResources.COLOR_PRIMARY,
                              fontSize: 17.sp)),
                      TextSpan(
                          text: '-Learning',
                          style: interBold.copyWith(
                              color: ColorResources.COLOR_GRAY_TEXT_LOGO,
                              fontSize: 17.sp)),
                    ],
                  ),
                ),
              ),
            ),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: ImageData.ICON_DASHBOARD,
              press: () {
                widget.onPageSelected(0);
                setState(() {
                  _page_active = 0;
                });
              },
              active: _page_active == 0 ? true : false,
            ),
            DrawerListTile(
              title: "Course",
              svgSrc: ImageData.ICON_COURSE,
              press: () {
                widget.onPageSelected(1);
                setState(() {
                  _page_active = 1;
                });
              },
              active: _page_active == 1 ? true : false,
            ),
            DrawerListTile(
              title: "Task",
              svgSrc: ImageData.ICON_TASK,
              press: () {
                widget.onPageSelected(2);
                setState(() {
                  _page_active = 2;
                });
              },
              active: _page_active == 2 ? true : false,
            ),
            DrawerListTile(
              title: "Reporting",
              svgSrc: ImageData.ICON_REPORTING,
              press: () {},
              active: false,
            ),
            DrawerListTile(
              title: "Instructors",
              svgSrc: ImageData.ICON_INSTRUCTOR,
              press: () {},
              active: false,
            ),
            SizedBox(
              height: 50.h,
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: ImageData.ICON_PROFILE,
              press: () {},
              active: false,
            ),
            DrawerListTile(
              title: "Activity",
              svgSrc: ImageData.ICON_ACTIVTY,
              press: () {},
              active: false,
            ),
            SizedBox(
              height: 50.h,
            ),
            DrawerListTile(
              title: "Support",
              svgSrc: ImageData.ICON_SUPPORT,
              press: () {},
              active: false,
            ),
            DrawerListTile(
              title: "Settings",
              svgSrc: ImageData.ICON_SETTING,
              press: () {},
              active: false,
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
    required this.active,
  }) : super(key: key);
  final _key = GlobalKey<ScaffoldState>();
  final String title, svgSrc;
  final bool active;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: HoverWidget(
              hoverChild: Container(
                margin: EdgeInsets.only(left: 12.h, right: 12.h, bottom: 12.h),
                padding: EdgeInsets.only(
                    left: 10.h, right: 10.h, top: 7.h, bottom: 7.h),
                decoration: BoxDecoration(
                  color: active
                      ? ColorResources.COLOR_PRIMARY
                      : ColorResources.COLOR_PRIMARY,
                  borderRadius: BorderRadius.circular(4.sp),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            svgSrc,
                            color: active
                                ? ColorResources.COLOR_WHITE
                                : ColorResources.COLOR_WHITE,
                            height: 15.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Text(
                          title,
                          style: interRegular.copyWith(
                              fontSize: 10.sp,
                              color: active
                                  ? ColorResources.COLOR_WHITE
                                  : ColorResources.COLOR_WHITE),
                        )
                      ],
                    ),
                    Container(
                      child: Icon(
                        Boxicons.bx_chevron_down,
                        color: active
                            ? ColorResources.COLOR_WHITE
                            : ColorResources.COLOR_WHITE,
                      ),
                    )
                  ],
                ),
              ),
              onHover: (event) {},
              child: Container(
                margin: EdgeInsets.only(left: 12.h, right: 12.h, bottom: 12.h),
                padding: EdgeInsets.only(
                    left: 10.h, right: 10.h, top: 7.h, bottom: 7.h),
                decoration: BoxDecoration(
                  color: active
                      ? ColorResources.COLOR_PRIMARY
                      : ColorResources.COLOR_WHITE,
                  borderRadius: BorderRadius.circular(4.sp),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: SvgPicture.asset(
                            svgSrc,
                            color: active
                                ? ColorResources.COLOR_WHITE
                                : ColorResources.COLOR_GRAY_UNACTIVE_ICON,
                            height: 15.sp,
                          ),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                        Text(
                          title,
                          style: interRegular.copyWith(
                              fontSize: 10.sp,
                              color: active
                                  ? ColorResources.COLOR_WHITE
                                  : ColorResources.COLOR_DEFAULT_TEXT),
                        )
                      ],
                    ),
                    Container(
                      child: Icon(
                        Boxicons.bx_chevron_down,
                        color: active
                            ? ColorResources.COLOR_WHITE
                            : ColorResources.COLOR_DEFAULT_TEXT,
                      ),
                    )
                  ],
                ),
              ))),
    );
  }
}
