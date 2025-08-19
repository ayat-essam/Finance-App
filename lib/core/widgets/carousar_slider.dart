import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:finance/core/widgets/cardItemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarousarSlider extends StatelessWidget {
  const CarousarSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 263.0.h,
        padEnds: false,
        animateToClosest: false,
        viewportFraction: 5.0,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        enlargeFactor: 0.2
      ),
      items: const [
        CarditemWidget()
      ]

    );
  }
}
