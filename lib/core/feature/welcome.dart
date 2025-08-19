import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'Screens/login.dart';
import '../widgets/primary Button Widget.dart';
import 'Screens/register.dart';

class Welcome extends StatefulWidget {
  static const String routeName = 'welcome';

  const Welcome({super.key});


  @override
  State<Welcome> createState() => _HomePageState();
}

class _HomePageState extends State<Welcome> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              child: Image.asset(
                "assets/image/img.png",
                fit: BoxFit.fill,
              ),
            ),
            const Gap(15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[ PrimaryButton(
                textButton: 'Login',
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
              ),

             const Gap(15),
            PrimaryButton(
              height: 56,
              textButton: 'Register',
              colorButton: Colors.white,
              textColor: Colors.blue,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Register()),
                );
              },

            ),
             const Gap(20),
                Text("Continue As Geust!",
                  style: AppStyle.black15.copyWith(color: Color(0xff202955),
                      decoration: TextDecoration.underline )
                  ,)
          ],
        ),
      ]
    ),
      )
      );


  }
}
