// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Features/Cart/Widgets/cart_product_card_widget.dart';
import 'package:flutter_ite_project/Features/OnBoarding/Widgets/my_button_widget.dart';
import 'package:flutter_ite_project/Utils/function.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontSize: 13.sp, fontFamily: "Gilroy-Bold"),
        ),
      ),
      body: Stack(
        alignment: FractionalOffset.bottomCenter,
        children: [
          ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const CartProductCardWidget();
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            child: MyButtonWidget(
              text: "Go to Checkout",
              onPressed: () {
                showCheckOutBottomSheet(context);
              },
            ),
          )
        ],
      ),
    );
  }
}

class DeliveryButtonWidget extends StatelessWidget {
  DeliveryButtonWidget(
      {super.key, required this.text, this.image, required this.subText});
  final String text;
  String? image;
  final String subText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: Theme.of(context).textTheme.headlineMedium),
        Row(
          children: [
            if (image == null)
              Text(
                subText,
                style: TextStyle(
                    fontSize: 10.sp,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontWeight: FontWeight.bold),
              )
            else
              SvgPicture.asset(image!),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        )
      ],
    );
  }
}
