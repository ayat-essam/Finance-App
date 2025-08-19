import 'package:finance/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  PrimaryButton  extends StatelessWidget {
  final Color ? colorButton;
 final void Function() onPress;
  final String? textButton;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? textColor;
  final double? fontSize;

   PrimaryButton({this.height,
     this.fontSize,
      this.width,
      this.textButton,
      this.borderRadius,
      this.textColor,
      required this.onPress,
      this.colorButton,} );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
            ),
            backgroundColor: colorButton ?? AppColor.blue,
          fixedSize: Size(width ?? 331.w , height ?? 56.h)
        ),
        onPressed: onPress,
        child: Text(textButton ?? "", style: TextStyle(
            color: textColor ?? Colors.white,
          fontSize: fontSize?? 18.sp,
        ),));
  }
}
