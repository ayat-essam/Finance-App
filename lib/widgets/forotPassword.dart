import 'package:finance/widgets/password%20changed.dart';
import 'package:finance/widgets/primary%20Button%20Widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../core/styling/app_colors.dart';
import '../core/styling/app_style.dart';
import 'Arrow widget.dart';
import 'TextFeiled.dart';

class ForgotPassword extends StatefulWidget {
  static const String routeName = 'forPass';

  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}
class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: const ArrowWidget()
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  Text("Forgot Password?",
                      style: AppStyle.primaryHeadLineStyle),
                  const Gap(20),
                  Text(
                    "Don't worry! It occurs. Please enter the email\n address linked with your account.",
                    style: AppStyle.gray,
                  ),
                  const Gap(20),
                  CustomTextField(
                    hintText: "Enter Your email",
                    isPassword: false,
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      } else
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  const Gap(25),
                  PrimaryButton(
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Send code'),
                          ),
                        );
                      }
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => PasswordChanged(),));
                    },
                    textButton: "Send code",
                  ),
                ],
              ),
            )
        )
    );
  }
}

