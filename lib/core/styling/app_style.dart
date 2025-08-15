import 'package:flutter/material.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle{

  static TextStyle primaryHeadLineStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 30.sp,
  color: AppColor.primaryColor,
  );

  static TextStyle subTitle = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 16.sp,
  color: AppColor.seconderyColor,
  );


  static TextStyle black = TextStyle(color: AppColor.black,
      fontSize: 16.sp,
      fontFamily: AppFonts.mainFontName,
      fontWeight: FontWeight.w500
  );

  static TextStyle gray = TextStyle(
    color: AppColor.gray,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp
  );

  static TextStyle black15 = TextStyle(
      color: AppColor.black,
      fontWeight: FontWeight.bold,
      fontSize: 15.sp
  );

}