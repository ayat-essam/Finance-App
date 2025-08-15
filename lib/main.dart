import 'package:finance/widgets/home.dart';
import 'package:finance/widgets/login.dart';
import 'package:finance/widgets/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          initialRoute:HomePage.routeName ,
          routes: {
            Register.routeName: (context) => Register(),
        Login.routeName: (_) => Login(),
        HomePage.routeName: (context) => HomePage()


        },
          home:  HomePage(),
        )

    );
  }
}

