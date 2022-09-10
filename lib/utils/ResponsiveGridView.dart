import 'package:belajar_admin/menu/dashboard/headerdashboard.dart';
import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:belajar_admin/utils/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ResponsiveGridView extends StatelessWidget {
  const ResponsiveGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1, required this.itemCount, required this.child,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  final int itemCount;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => child);
  }
}
