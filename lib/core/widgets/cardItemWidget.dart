import 'package:finance/core/styling/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarditemWidget extends StatelessWidget {
  const CarditemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ Container(
        width: 207.w,
        height: 263.h,
        decoration: BoxDecoration(
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(16.r)
        ),
      ),

        Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/image/Ellipse 15.png",
              color: AppColor.white,
              fit: BoxFit.fill,
              width: 207,
              height: 200,
            )),
        Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/image/Ellipse 15.png",
              color: AppColor.white,
              fit: BoxFit.fill,
              width: 120,
              height: 130,
            )),

        Positioned(
          bottom: 0,
            left: 0,
            child: Image.asset("assets/image/Ellipse 15.png",
              color: AppColor.white,
            fit: BoxFit.fill,
             width: 207,
              height: 200,
            )),
        Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/image/Ellipse 15.png",
              color: AppColor.white,
              fit: BoxFit.fill,
              width: 120,
              height: 130,
            )),

    ]
    );
  }
}
