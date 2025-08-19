import 'package:finance/core/feature/mainSrc/Home.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:finance/core/widgets/Arrow%20widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MyCard extends StatelessWidget {
  static const String routeName = 'MyCard';

  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const ArrowWidget(),
                const Gap(11),
                Text("All Cards",
                style: AppStyle.black15,),
                Container(
                  margin: const EdgeInsets.all(0.9),
                  padding: const EdgeInsets.all(0.9),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColor.offWhite)
                  ),
                  child: Image.asset("assets/image/option.png"),
                ),

              ],
            ),
            Image.asset("assets/image/X-Card.png",
            height: 327.h,
              width: 179.w,
              alignment: Alignment.center,
              ),
            const Gap(24),
            Image.asset("assets/image/X-Card visa2.png",
              height: 327.h,
              width: 179.w,
              alignment: Alignment.center,
            ),
          ],
          

        ),

      ),
    );
  }
}
