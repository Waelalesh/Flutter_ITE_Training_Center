// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Cart/Pages/my_cart.dart';
import 'package:flutter_ite_project/Features/Cart/Pages/order_accepted.dart';
import 'package:flutter_ite_project/Features/Explore/Widgets/Products_Screen_Widgets/text_form_field_widget.dart';
import 'package:flutter_ite_project/Features/OnBoarding/Widgets/my_button_widget.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

void showDialogFun(BuildContext context) {
  showAdaptiveDialog(
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 25.h,
            width: 50.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4.w),
                      child: Image.asset(
                        AppImageAssets.samsungGalaryPng,
                        height: 10.h,
                      ),
                    ),
                    const Text("Galary"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImageAssets.samsungCameraPng,
                      height: 10.h,
                    ),
                    const Text("Camera"),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      context: context);
}

void showCheckOutBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Container(
          height: 60.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Checkout",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    IconButton(
                        iconSize: 20.sp,
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close_rounded)),
                  ],
                ),
              ),
              const Divider(
                color: Colors.black,
                thickness: 0.2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DeliveryButtonWidget(
                      text: "Delivery",
                      subText: "Select Method",
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                    DeliveryButtonWidget(
                      subText: "",
                      text: "Pament",
                      image: AppImageAssets.pamentSvg,
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                    DeliveryButtonWidget(
                      text: "Promo Code",
                      subText: "Pick discount",
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                    DeliveryButtonWidget(
                      text: "Total Cost",
                      subText: "\$13.97",
                    ),
                    const Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "By placing an order you agree to our\n",
                            style: Theme.of(context).textTheme.headlineSmall,
                            children: [
                          TextSpan(
                              text: "Terms",
                              style: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp)),
                          TextSpan(
                              text: " And ",
                              style: Theme.of(context).textTheme.headlineSmall),
                          TextSpan(
                              text: "Conditions",
                              style: TextStyle(
                                  fontFamily: GoogleFonts.poppins().fontFamily,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp))
                        ])),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Hom",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          "Profile",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    MyButtonWidget(
                        text: "Place Order",
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (b) {
                            return const OrderAccepted();
                          }));
                        })
                  ],
                ),
              )
            ],
          ),
        );
      });
}

void showButtomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (builder) => Container(
            height: 45.h,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      IconButton(
                          iconSize: 20.sp,
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.close_rounded)),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 0.2,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    children: [
                      const TextformFieldWidget(hintText: "Name"),
                      const TextformFieldWidget(hintText: "Description"),
                      const TextformFieldWidget(hintText: "Price"),
                      // TextformFieldWidget(hintText: "Image"),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // onPressed: () {},
                        children: [
                          Text("Image",
                              style:
                                  Theme.of(context).textTheme.headlineMedium),
                          IconButton(
                            onPressed: () {
                              showDialogFun(context);
                            },
                            icon: const Icon(Icons.arrow_forward_ios_outlined),
                          )
                        ],
                      ),
                      const Divider(
                        color: Colors.black,
                        thickness: 0.2,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ));
}
