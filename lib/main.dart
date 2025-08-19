import 'package:finance/core/feature/mainSrc/Home.dart';
import 'package:finance/core/widgets/BottemNavigationBar.dart';
import 'package:finance/core/feature/mainSrc/Statistics.dart';
import 'package:finance/core/feature/mainSrc/add.dart';
import 'package:finance/core/feature/mainSrc/myCard.dart';
import 'package:finance/core/feature/mainSrc/profile.dart';
import 'package:finance/core/feature/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/feature/Screens/register.dart';
import 'core/feature/verfy otp/verfy OTP Scr.dart';
import 'core/feature/Screens/creatNewPass.dart';
import 'core/feature/Screens/forotPassword.dart';
import 'core/feature/Screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute:Welcome.routeName ,
          routes: {
            MyCard.routeName: (context) => const MyCard(),
            Register.routeName: (context) =>  Register(),
            Login.routeName: (_) => const Login(),
            ForgotPassword.routeName: (context) => const ForgotPassword(),
            Createnewpass.routName: (context) => Createnewpass(),
            VerifyOTPScr.routeName: (context) => const VerifyOTPScr(),
            Welcome.routeName: (context) => const Welcome(),
            BottemNavigationBar.routeName: (context) =>  BottemNavigationBar(userName: '',),
            Statistics.routeName: (context) => const Statistics(),
            Home.routeName: (context) =>  Home(userName: '',),
            Profile.routeName: (context) => const Profile(),
            Add.routeName: (context) => const Add(),

        },
          home:  Welcome(),

        )

    );
  }
}

