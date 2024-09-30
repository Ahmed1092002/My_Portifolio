import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: ColorsUtiles.SecondaryColor_black,
    primaryColor: ColorsUtiles.PrimaryColor_blue,
    appBarTheme: const AppBarTheme(
      color: ColorsUtiles.backGroundColor_gray,
    ),
    textTheme: TextTheme(
      titleMedium: GoogleFonts.roboto(
          color: ColorsUtiles.PrimaryColor_blue, fontSize: 20.sp),
      headlineLarge: GoogleFonts.roboto(
          color: ColorsUtiles.PrimaryColor_blue, fontSize: 40.sp),
      bodySmall: GoogleFonts.roboto(color: ColorsUtiles.white, fontSize: 15.sp),
      bodyMedium:
          GoogleFonts.roboto(color: ColorsUtiles.white, fontSize: 25.sp),
      bodyLarge: GoogleFonts.roboto(color: ColorsUtiles.white, fontSize: 35.sp),
      displaySmall:
          GoogleFonts.roboto(color: ColorsUtiles.white, fontSize: 25.sp),
      displayMedium:
          GoogleFonts.roboto(color: ColorsUtiles.white, fontSize: 45.sp),
      displayLarge:
          GoogleFonts.roboto(color: ColorsUtiles.white, fontSize: 65.sp),
    ));
