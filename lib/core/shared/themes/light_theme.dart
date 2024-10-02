import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/main.dart';

ThemeData lightTheme = ThemeData().copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: ColorsUtiles.PrimaryColor_blue,
    appBarTheme: const AppBarTheme(
      color: ColorsUtiles.white,
    ),
    textTheme: TextTheme(
      titleMedium: GoogleFonts.roboto(
          color: ColorsUtiles.PrimaryColor_blue, fontSize: 35.sp),
      titleSmall:
          GoogleFonts.roboto(color: ColorsUtiles.white, fontSize: 20.sp),
      headlineLarge: GoogleFonts.roboto(
          color: ColorsUtiles.PrimaryColor_blue, fontSize: 50.sp),
      bodySmall: GoogleFonts.roboto(
          color: ColorsUtiles.backGroundColor_gray, fontSize: 15.sp),
      bodyMedium: GoogleFonts.roboto(
          color: ColorsUtiles.backGroundColor_gray, fontSize: 25.sp),
      bodyLarge: GoogleFonts.roboto(
          color: ColorsUtiles.PrimaryColor_blue, fontSize: 35.sp),
      displaySmall: GoogleFonts.roboto(
          color: ColorsUtiles.PrimaryColor_blue, fontSize: 25.sp),
      displayMedium: GoogleFonts.roboto(
          color: ColorsUtiles.PrimaryColor_blue, fontSize: 45.sp),
      displayLarge: GoogleFonts.roboto(
          color: ColorsUtiles.PrimaryColor_blue, fontSize: 65.sp),
    ));
