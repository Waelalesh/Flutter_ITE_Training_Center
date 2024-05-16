import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Main/Pages/main_screen.dart';
import 'package:flutter_ite_project/Features/OnBoarding/Widgets/my_button_widget.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.h, bottom: 2.h, right: 8.w),
                child: Image.asset(AppImageAssets.acceptedOrderPng),
              ),
              Text(
                "Your Order has been \n accepted",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 17.sp),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                '''Your items has been placcd and is on 
it’s way to being processed''',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const Spacer(),
              MyButtonWidget(
                // color: null,
                onPressed: () {},
                text: "Track Order",
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2.h),
                child: MyButtonWidget(
                  color: null,
                  style: TextStyle(
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: FontWeight.bold),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (builder) {
                      return const MainScreen();
                    }), (route) => false);
                  },
                  text: "Back to home",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
