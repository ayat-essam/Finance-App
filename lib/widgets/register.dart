import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:finance/widgets/Arrow%20widget.dart';
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
  final formKey = GlobalKey<FormState>();
  late TextEditingController userName = TextEditingController();
  late TextEditingController email = TextEditingController();
  late TextEditingController password = TextEditingController();
  late TextEditingController confirmPassword = TextEditingController();
  @override
  void initState(){
    super.initState();
  password = TextEditingController();
  email = TextEditingController();
  userName = TextEditingController();
  confirmPassword = TextEditingController();

  }

  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const ArrowWidget(),
      ),
      body:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
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
                                   validator: (p0) {
                                     if(p0!.isEmpty){
                                       return 'Please Enter UserName';
                                     }
                                   },
                                  controller: userName,
                                    isPassword: false,
                                hintText: "User Name!",
                                  keyboardType: TextInputType.name,
                                ),
                                const Gap(20),
                                 CustomTextField(
                                   validator: (value) {
                                     if(value == null || value.isEmpty){
                                       return "Please enter your password";
                                     }
                                     if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
                                       return 'please enter email like *****@gmail.com';
                                     }
                                   },
                                   controller: email,
                                  isPassword: false,
                                  hintText: "Enter Your e-mail!",
                                  keyboardType: TextInputType.emailAddress,

                                ),
                                const Gap(20),

                                CustomTextField(
                                  isPassword: isPassword,
                                  keyboardType: TextInputType.visiblePassword,
                                  hintText: "Please Enter a Password",
                                  controller: password,
                                  validator: (value) {
                                    if(value == null || value.isEmpty){
                                      return "Please enter your password";
                                    }
                                    if(value.length! < 8){
                                      return "Password must be at least 6 characters";
                                    }
                                  },
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
                                  validator: (value) {
                                    if(value != password.text){
                                      return "Passwords do not match ❌";
                                    }
                                    if(value == null || value.isEmpty){
                                      return "Please confirm your password";
                                    }
                                  },
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
                                    if(formKey.currentState!.validate()){
                                     ScaffoldMessenger.of(context).showSnackBar(
                                         const SnackBar(
                                           content: Text("Register Success ✅"),

                                         ));
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
                  text: "Already have an account?",
                  style: AppStyle.subTitle.copyWith(color: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Login(),));
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
