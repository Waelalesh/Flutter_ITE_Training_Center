import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Main/Pages/main_screen.dart';
import 'package:flutter_ite_project/Features/OnBoarding/Widgets/my_button_widget.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  AppImageAssets.onBordingImagePng,
                ))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(AppImageAssets.whiteCarrotIconSvg),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Welcome\nto our store",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Ger your groceries in as fast as one hour",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 2.h,
            ),
            MyButtonWidget(text: "Get Started", onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (builder) => const MainScreen()));
              },),
           
            SizedBox(
              height: 7.h,
            )
          ],
        ),
      ),
    );
  }
}
