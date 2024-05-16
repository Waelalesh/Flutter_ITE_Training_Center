// ignore_for_file: prefer_typing_uninitialized_variables, prefer_if_null_operators


import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:sizer/sizer.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color = AppColor.splashScreenColor,
      this.style});
  final String text;
  final void Function() onPressed;
  final color;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 100.w - 15.w,
      height: 7.h,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.w)),
      color: color,
      onPressed: onPressed,
      child: Text(
        text,
        style: style == null ? Theme.of(context).textTheme.bodySmall : style,
      ),
    );
  }
}
