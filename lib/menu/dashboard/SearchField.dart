import 'package:belajar_admin/utils/ColorResources.dart';
import 'package:belajar_admin/utils/Style.dart';
import 'package:boxicons/boxicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: interRegular,
      decoration: InputDecoration(
          hintText: "Search",
          fillColor: ColorResources.COLOR_WHITE,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffD0D5DD)),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffD0D5DD)),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffD0D5DD)),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          prefixIcon: Container(
            padding: EdgeInsets.all(16.0 * 0.75),
            margin: EdgeInsets.symmetric(horizontal: 16.0 / 2),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Icon(
              Boxicons.bx_search,
              size: 17.sp,
            ),
          )),
    );
  }
}
