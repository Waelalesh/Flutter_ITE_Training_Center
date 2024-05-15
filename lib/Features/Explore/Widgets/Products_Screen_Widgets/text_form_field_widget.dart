import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextformFieldWidget extends StatelessWidget {
  const TextformFieldWidget({super.key, required this.hintText});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black)),
          focusColor: Colors.black,
          hoverColor: Colors.black,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(width: 0.01, color: Colors.black),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 2.h),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.headlineMedium),
    );
  }
}
