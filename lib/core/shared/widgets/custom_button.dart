import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';

class CustomButton extends StatelessWidget {
  final Color borderColors;
  final Color Backcolors;
  final String title;
  final VoidCallback onClick;
  const CustomButton({
    super.key,
    required this.borderColors,
    required this.Backcolors,
    required this.title,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      height: 50.h,
      minWidth: 70.w,
      animationDuration: Duration(seconds: 1),
      color: Backcolors,
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall,
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: borderColors)),
    );
  }
}
