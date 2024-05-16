import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class CartProductCardWidget extends StatefulWidget {
  const CartProductCardWidget({super.key});

  @override
  State<CartProductCardWidget> createState() => _CartProductCardWidgetState();
}

class _CartProductCardWidgetState extends State<CartProductCardWidget> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 0.2,
          color: Colors.black,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppImageAssets.bananasPng),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Bell Pepper Red",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w900),
                  ),
                  Text(
                    "1kg, Price",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (number > 0) number--;
                            });
                          },
                          icon: SvgPicture.asset(AppImageAssets.cartMinusSvg)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child: Text(number.toString()),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              number++;
                            });
                          },
                          icon: SvgPicture.asset(AppImageAssets.cartPlusSvg))
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: IconButton(
                        alignment: Alignment.topCenter,
                        onPressed: () {},
                        icon: Icon(
                          Icons.close_outlined,
                          size: 20.sp,
                        )),
                  ),
                  const Text(
                    "\$4.99",
                    style: TextStyle(fontWeight: FontWeight.w900),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
