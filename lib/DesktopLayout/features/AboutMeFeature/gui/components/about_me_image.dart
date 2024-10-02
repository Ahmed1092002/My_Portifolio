import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';

class AboutMeImage extends HookWidget {
  final String image;
  const AboutMeImage({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: ColorsUtiles.PrimaryColor_blue)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          image,
          width: 65.w,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
