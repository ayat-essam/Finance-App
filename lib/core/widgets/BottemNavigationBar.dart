import 'package:finance/core/feature/mainSrc/Home.dart';
import 'package:finance/core/feature/mainSrc/Statistics.dart';
import 'package:finance/core/feature/mainSrc/add.dart';
import 'package:finance/core/feature/mainSrc/myCard.dart';
import 'package:finance/core/feature/mainSrc/profile.dart';
import 'package:finance/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottemNavigationBar extends StatefulWidget {
  final String userName;
  static const String routeName = 'BottemNavigationBar';

  const BottemNavigationBar({Key? key, required this.userName})
      : super(key: key);

  @override
  State<BottemNavigationBar> createState() => _HomepageState();
}

class _HomepageState extends State<BottemNavigationBar> {
  int currentIndex = 0;
  Widget addIcon (){
    return Container(
      height: 56.h,
      width: 56.w,
      margin: const EdgeInsets.only(top: 4, left: 4),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
       shape: BoxShape.circle,
           boxShadow: [
             BoxShadow(
               color: AppColor.primaryColor.withOpacity(0.5),
             )
           ]
      ),
      child:  Icon(Icons.add,size: 30, color: AppColor.white,),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens =  [
      Home(userName: widget.userName,),
      Statistics() ,
      Add(),
      MyCard() ,
      Profile(),
    ];
    return Scaffold(
      backgroundColor: AppColor.white,
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: AppColor.gray,
        showUnselectedLabels: true,
        elevation: 3,
        backgroundColor: const Color(0xffFDFDFD),
        onTap: (value) {
          setState(() => currentIndex = value);
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "Home",
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart,size: 30,),
            label: "Statistic",
          ),

          BottomNavigationBarItem(
            icon: addIcon(),
            label: "Add",
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.wallet, size: 30),
            label: "MyCard",
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
