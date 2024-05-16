import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/OnBoarding/Pages/onboarding_screen.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) {
        return const OnBordingScreen();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashScreenColor,
      body: Center(
        child: SvgPicture.asset(AppImageAssets.logoSvg),
      ),
    );
  }
}
