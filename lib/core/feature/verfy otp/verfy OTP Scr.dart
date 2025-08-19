import 'package:finance/core/feature/mainSrc/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../styling/app_colors.dart';
import '../../styling/app_style.dart';
import '../../widgets/Arrow widget.dart';
import '../../widgets/TextFeiled.dart';
import '../../widgets/primary Button Widget.dart';

class VerifyOTPScr extends StatefulWidget {
  const VerifyOTPScr({super.key});
  static const String routeName = 'otp';

  @override
  State<VerifyOTPScr> createState() => _VerifyOTPScrState();
}

class _VerifyOTPScrState extends State<VerifyOTPScr> {
  late TextEditingController pinCode = TextEditingController();

  @override
  void initState(){
    super.initState();
    pinCode = TextEditingController();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: const ArrowWidget(),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(

              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: ListView(
                            children: [
                              Text("OTP Verification!",
                                style: AppStyle.primaryHeadLineStyle,),
                              const Gap(10),
                              Text("Enter the verification code we just sent on your email address."
                                ,style: AppStyle.gray ,),
                              const Gap(20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  PinCodeTextField(
                                      appContext: context,
                                      length: 4,
                                      controller: pinCode,
                                      keyboardType: TextInputType.number,
                                      enabled: true,
                                      pinTheme: PinTheme(
                                        inactiveColor: AppColor.blue,
                                        inactiveFillColor: AppColor.white,
                                        selectedColor: AppColor.dark,
                                        selectedBorderWidth: 0.9,
                                        borderRadius: BorderRadius.circular(8),
                                        fieldHeight: 60.h,
                                        fieldWidth: 70.w,
                                        activeFillColor: AppColor.gray,
                                        activeColor: AppColor.gray,
                                        selectedFillColor: AppColor.offWhite,
                                        shape: PinCodeFieldShape.box,

                                      ),
                                      enableActiveFill: true,
                                      animationDuration: const Duration(milliseconds: 300)
                                  ),

                                  const Gap(5),
                                  PrimaryButton(
                                    onPress: () {
                                      Navigator.pop(
                                          context, MaterialPageRoute(
                                          builder: (context) =>  Home(userName: 'userName')));
                                    },
                                    textButton: "Verify",
                                  ),
                                  const Gap(32),


                                ],
                              )
                            ]

                        )

                    ),

                  ]
              ),
            )
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 16, top: 8),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Didn’t received code? ",
                    style: AppStyle.subTitle.copyWith(color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                    ),

                ),
                TextSpan(
                  text: "Resend",
                  style: AppStyle.subTitle.copyWith(
                    color: AppColor.dark,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ),

      );
    }
}

