import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_fonts.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightMood = ThemeData(
    scaffoldBackgroundColor: AppColor.white,
    fontFamily: AppFonts.mainFontName,
    primaryColor: AppColor.primaryColor,
    textTheme: TextTheme(
      titleLarge: AppStyle.primaryHeadLineStyle,
      titleMedium: AppStyle.subTitle,
    ),
  );
}
