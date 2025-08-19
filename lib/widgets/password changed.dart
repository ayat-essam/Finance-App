import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:finance/widgets/login.dart';
import 'package:finance/widgets/primary%20Button%20Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PasswordChanged extends StatelessWidget {
  const PasswordChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Container(

        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/Successmark.png",
              height: 100,width: 100,
            alignment: Alignment.center,),
            const Gap(25),
            Text("Password Changed!",style: AppStyle.primaryHeadLineStyle.copyWith(
                color: AppColor.blue),),
            const Gap(10),
            Text("Your password has been changed \n successfully.",
              style: AppStyle.subTitle.copyWith(color: AppColor.gray),),
            const Gap(25),
            PrimaryButton(
              textButton: "Back to Login",
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const Login(),));
                })

          ],

        ),
      ),
    );
  }
}
