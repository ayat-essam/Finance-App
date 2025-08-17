import 'package:flutter/material.dart';
import '../core/styling/app_colors.dart';

class SocialMediaIcons extends StatelessWidget {

  final String imageIcon;
  const SocialMediaIcons({
     required this.imageIcon,
  super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:  Container(
          padding: const EdgeInsets.all(0.9),
          margin: const EdgeInsets.all(0.9) ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColor.offWhite,
          ),
          child: IconButton(
              onPressed: () {},
              icon: Image.asset(imageIcon,),),

        ),
    );
  }
}
