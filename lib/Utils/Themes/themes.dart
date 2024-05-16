import 'package:flutter/material.dart';
import 'package:flutter_ite_project/Utils/Constant/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

TextTheme myTextTheme = TextTheme(
  titleSmall: TextStyle(
      color: Colors.white,
      fontSize: 10.sp,
      fontWeight: FontWeight.w300,
      letterSpacing: 1.w),
  titleLarge: TextStyle(
    color: Colors.white,
    fontSize: 40.sp,
    fontWeight: FontWeight.w500,
  ),
  titleMedium: TextStyle(
      letterSpacing: 1.w,
      color: Colors.white,
      fontSize: 30.sp,
      fontWeight: FontWeight.w400),
  bodySmall: TextStyle(
      color: Colors.white,
      fontSize: 11.sp,
      fontFamily: GoogleFonts.poppins().fontFamily),
  bodyMedium: TextStyle(
      color: Colors.black,
      fontSize: 15.sp,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.poppins().fontFamily),
  headlineMedium: TextStyle(fontSize: 15.sp, color: AppColor.hintTextColor),
  displaySmall: TextStyle(
      color: const Color.fromRGBO(124, 124, 124, 1),
      fontSize: 12.sp,
      fontFamily: GoogleFonts.poppins().fontFamily),
  headlineSmall: TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      color: const Color.fromRGBO(124, 124, 124, 1),
      fontSize: 10.sp),
);
