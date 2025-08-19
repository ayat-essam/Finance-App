import 'package:flutter/material.dart';

import '../core/styling/app_colors.dart';

class ArrowWidget extends StatelessWidget {
  const ArrowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      );
  }
}
