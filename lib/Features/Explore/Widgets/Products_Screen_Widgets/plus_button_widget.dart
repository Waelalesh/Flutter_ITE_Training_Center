import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:flutter_ite_project/Utils/Constant/images.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class PlusButtonWidget extends StatelessWidget {
  const PlusButtonWidget({
    super.key,
    required this.onPressed,
  });
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.w)),
        color: AppColor.splashScreenColor,
        onPressed: onPressed,
        minWidth: 0.01.w,
        height: 4.5.h,
        child: SvgPicture.asset(
          AppImageAssets.plusIconSvg,
          height: 1.5.h,
          width: 2.w,
        ),
      ),
    );
  }
}
