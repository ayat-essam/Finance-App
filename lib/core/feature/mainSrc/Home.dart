import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../styling/app_colors.dart';
import '../../styling/app_style.dart';
import '../../widgets/carousar_slider.dart';
import '../../widgets/dots.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home';
  final String userName;
  const Home({required this.userName, super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.only(top: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 25),
                  CircleAvatar(
                    backgroundColor: AppColor.white,
                    backgroundImage: const AssetImage("assets/image/profile.jpg"),
                    radius: 27,
                  ),
                  const SizedBox(width: 11),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome Back", style: AppStyle.subTitle),
                        Text(
                          widget.userName,
                          style: AppStyle.primaryHeadLineStyle.copyWith(
                            fontSize: 18,
                            color: AppColor.black,
                          ),
                        ),
                        const Gap( 20),
                        const CarousarSlider(),
                        const Gap( 5),
                        const Dots(),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 48.h,
                    width: 48.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColor.offWhite, width: 1),
                    ),
                    child: Icon(Icons.notifications, color: AppColor.blue),
                  ),
                  const SizedBox(width: 25),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
