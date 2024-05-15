// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/lists.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: const SafeArea(
        child: SizedBox(),
      ),
      bottomNavigationBar: Container(
        height: 9.h,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(4.w))),
        child: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          selectedItemColor: AppColor.splashScreenColor,
          unselectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: buttomNavigationBarItems,
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
