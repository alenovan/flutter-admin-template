import 'package:belajar_admin/utils/ImageData.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:belajar_admin/menu/dashboard/headerdashboard.dart';
import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:belajar_admin/utils/Responsive.dart';
import 'package:belajar_admin/utils/ResponsiveGridView.dart';
import 'package:belajar_admin/utils/Style.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeWorkList extends StatelessWidget {
  const HomeWorkList(
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var COLOR_BACKGROUND =
        ColorResources.COLOR_HOMEWORK_BACKGROUND_FB.withOpacity(0.2);
    var COLOR_ICON_BACKGROUND = ColorResources.COLOR_HOMEWORK_ICON_FB;
    var COLOR_HOMEWORKTEXT = ColorResources.COLOR_HOMEWORKTEXT_FB;
    var COLOR_HOMEWORK_PERCENT_TEXT =
        ColorResources.COLOR_HOMEWORK_PERCENT_TEXT_FB;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: COLOR_BACKGROUND,
        ),
        padding: EdgeInsets.all(10.h),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                decoration: new BoxDecoration(
                  color: COLOR_ICON_BACKGROUND,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(10.h),
                child: SvgPicture.asset(
                  ImageData.ICON_SHOPPING_BAG,
                  height: 15.sp,
                ),
              ),
            ),
            SizedBox(
              width: 10.h,
            ),
            Flexible(
              flex: 5,
              child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Container(
                      margin: EdgeInsets.only(left: 7.h, right: 7.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Web Design",
                              style: interMedium.copyWith(
                                  color: COLOR_HOMEWORKTEXT),
                            ),
                          ),
                          Container(
                            child: Text(
                              "55%",
                              style: interRegular.copyWith(
                                  color: ColorResources
                                      .COLOR_HOMEWORK_PERCENT_TEXT),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.h),
                      child: new LinearPercentIndicator(
                        animation: true,
                        lineHeight: 8.h,
                        animationDuration: 2500,
                        percent: 0.8,
                        barRadius: const Radius.circular(16),
                        progressColor: COLOR_HOMEWORK_PERCENT_TEXT,
                      ),
                    ),
                  ])),
            )
          ],
        ));
  }
}
