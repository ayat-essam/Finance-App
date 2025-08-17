import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/styling/app_style.dart';
import 'package:finance/main.dart';
import 'package:finance/widgets/primary%20Button%20Widget.dart';
import 'package:finance/widgets/register.dart';
import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "assets/image/loginImg.jpg",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 15 ),
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

             SizedBox(height: 15),
            PrimaryButton(
              height: 56,
              textButton: 'Register',
              colorButton: Colors.white,
              textColor: Colors.blue,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },

            ),
             const SizedBox(height: 15),
            // CustomTextField(
            //   isPassword: isPassword,
            //   hintText: 'Enter Your Password',
            //   icon: IconButton(
            //     onPressed: () {
            //       setState(() {
            //         isPassword = !isPassword;
            //       });
            //     },
            //     icon: Icon(
            //       isPassword ? Icons.visibility_off_outlined : Icons.visibility,
            //     ),
            //   ),
            // ),
                SizedBox(height: 20,),
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
