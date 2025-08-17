import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:finance/widgets/forotPassword.dart';
import 'package:finance/widgets/login.dart';
import 'package:finance/widgets/primary%20Button%20Widget.dart';
import 'package:finance/widgets/socialMedia%20Icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'TextFeiled.dart';

class Register extends StatefulWidget {
  static const String routeName = 'Register';

  const Register({super.key});

  @override
  State<Register> createState() => _LoginState();
}

class _LoginState extends State<Register> {
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

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
                          Text("Hello Register to get!👋 \n Started !",
                            style: AppStyle.primaryHeadLineStyle,),
                          const Gap(20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomTextField(
                                  isPassword: true,
                              hintText: "User Name!",
                                keyboardType: TextInputType.name,
                              ),
                              const Gap(20),
                              CustomTextField(
                                isPassword: true,
                                hintText: "Enter Your e-mail!",
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const Gap(20),

                              CustomTextField(
                                isPassword: isPassword,
                                keyboardType: TextInputType.visiblePassword,
                                hintText: "Please Enter a Password",
                                controller: password,
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
                              const Gap(20),
                              CustomTextField(
                                controller: confirmPassword,
                                isPassword: isPassword,
                                keyboardType: TextInputType.visiblePassword,
                                hintText: "Confirm Password",
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
                              const Gap(25),
                              PrimaryButton(
                                onPress: (){
                                  if (password.text.isEmpty || confirmPassword.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Please fill both fields")),
              );
               } else if (password.text != confirmPassword.text) {
              ScaffoldMessenger.of(context).showSnackBar(
               const SnackBar(content: Text("Passwords do not match ❌")),
               );
                 } else {
                 ScaffoldMessenger.of(context).showSnackBar(
                 const SnackBar(content: Text("Passwords match ✅")),
               );
           }
                                },
                                textButton: "Register",
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
                                      child: Text("Or Register With",
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
                  text: "Already have an account?",
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
                text: "Login Now",
                style: AppStyle.subTitle.copyWith(
                  color: AppColor.dark,
                  decoration: TextDecoration.underline,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
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
