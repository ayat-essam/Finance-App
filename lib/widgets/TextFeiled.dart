import 'package:finance/core/styling/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final Widget? icon;
  final double? width;
  final double? padding;
  final bool? isPassword;
  final bool? onPress;
  const CustomTextField ({
    this.controller,
    required this.isPassword,
    this.onPress,
    this.keyboardType,
    this.width,
    this.hintText,
    this.icon,
    this.padding,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w ,
      child: TextFormField(
        keyboardType: keyboardType?? TextInputType.number,
        obscureText: isPassword ?? false,
        autofocus: false,
        cursorColor: AppColor.primaryColor,
        decoration: InputDecoration(
          hintText: hintText?? "",
          hintStyle: TextStyle(
            fontSize: 15.sp,
            color: const Color(0xff8391A1) ,
            fontWeight: FontWeight.w400,
          ),
          contentPadding:  EdgeInsets.symmetric(horizontal: 18.sp),
          filled: true,
          fillColor: Color(0xffF7F8F9),
          suffixIcon: icon ,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffE8ECF4),
              width: 1,

            ),
          ) ,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
           color: Color(AppColor.primaryColor.blue),
              width: 1,

    ),


        ),
      ),
    )
    );
  }
}
