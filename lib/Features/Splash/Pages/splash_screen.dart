
import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   Timer.periodic(const Duration(seconds: 5), (timer) {
  //     Navigator.push(context, MaterialPageRoute(builder: (builder) {
  //       return const OnBordingScreen();
  //     }));
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashScreenColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImageAssets.whiteCarrotIconSvg),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              // alignment: Alignment.center,
              children: [
                Text("nectar", style: Theme.of(context).textTheme.titleLarge),
                Text("online groceriet",
                    style: Theme.of(context).textTheme.titleSmall),
              ],
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: "nectar\n",
                      style: Theme.of(context).textTheme.titleLarge),
                  TextSpan(
                      text: "online groceriet",
                      style: Theme.of(context).textTheme.titleSmall)
                ]))
          ],
        ),
      ),
    );
  }
}
