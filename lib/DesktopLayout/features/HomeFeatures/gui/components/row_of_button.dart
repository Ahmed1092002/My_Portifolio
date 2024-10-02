// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/core/shared/utiles/ScrollUtil.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';
import 'package:my_portifolio/core/shared/widgets/custom_button.dart';

class RowOfButton extends StatelessWidget {
  final VoidCallback onScroll;
  const RowOfButton({
    Key? key,
    required this.onScroll,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomButton(
            Backcolors: ColorsUtiles.PrimaryColor_blue.withOpacity(0.5),
            borderColors: Colors.transparent,
            onClick: () {},
            title: "Contact Me"),
        SizedBox(
          width: 10.w,
        ),
        CustomButton(
            Backcolors: Colors.transparent,
            borderColors: Colors.white,
            onClick: onScroll,
            title: "Know More")
      ],
    );
  }
}
