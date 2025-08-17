import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:finance/widgets/forotPassword.dart';
import 'package:finance/widgets/home.dart';
import 'package:finance/widgets/primary%20Button%20Widget.dart';
import 'package:finance/widgets/register.dart';
import 'package:finance/widgets/socialMedia%20Icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'TextFeiled.dart';

class Login extends StatefulWidget {
  static const String routeName = 'login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          padding: const EdgeInsets.all(0.9),
          margin: const EdgeInsets.all(0.9),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppColor.offWhite
          ),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              }, icon: const Icon(
            Icons.arrow_back_ios_new_sharp,color: Colors.blueAccent,)),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children:[
                  Text("Welcome Back !👋 \n Again !",
                style: AppStyle.primaryHeadLineStyle,),
            const Gap(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomTextField(
                    isPassword: true,
                  hintText: "Please Enter Your e_mail",
                  keyboardType: TextInputType.text,

                ),
                const Gap(20),
                CustomTextField(
                    isPassword: isPassword,
                keyboardType: TextInputType.visiblePassword,
                  hintText: "Please Enter Your Password",
                  icon: IconButton(
                      onPressed: (){
                        setState(() {
                          isPassword = !isPassword;
                        });
                      },
                      icon: Icon( isPassword ?
                        Icons.visibility_off_outlined : Icons.visibility_outlined
                      )),
                ),
                const Gap(5),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const ForgotPassword()));
                    },
                    child: Text("Forgot a Password?",
                    style: AppStyle.subTitle.copyWith(fontSize: 15 ,decoration: TextDecoration.underline)),
                ),
                ),

                 const Gap(25),
                PrimaryButton(
                    onPress: (){},
                textButton: "Login",
                ),
                const Gap(25),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColor.gray,

                      ),
                    ),
                    Padding(
                        padding:const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Or Login With",
                      style: AppStyle.subTitle ,),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColor.gray,
                      ),
                    ),
      ]
          ),
                    const Gap(15),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SocialMediaIcons(imageIcon: "assets/image/facebook_ic.png",),
                           Gap(15),
                        SocialMediaIcons(
                       imageIcon: "assets/image/google_ic.png",),
                        Gap(15),
                        SocialMediaIcons(
                            imageIcon: "assets/image/cib_apple.png", ),
                  ],
                ),
              ],
            )
          ]

      )

      ),

    ]
    )
    ),
        bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 16, top: 8),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account? ",
                style: AppStyle.subTitle.copyWith(color: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Register(),));
                    }
              ),
              TextSpan(
                text: "Register Now",
                style: AppStyle.subTitle.copyWith(
                  color: AppColor.dark,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Register(),
                      ),
                    );
                  },
              ),
            ],
          ),
        ),
      ),

    );


  }
}
