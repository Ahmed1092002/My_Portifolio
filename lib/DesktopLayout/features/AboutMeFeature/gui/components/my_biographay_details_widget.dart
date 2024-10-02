// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';

class MyBiographayDetailsWidget extends StatelessWidget {
  final String title;
  final String desripion;
  const MyBiographayDetailsWidget({
    Key? key,
    required this.title,
    required this.desripion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "• $title",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Spacer(),
              Text(
                desripion,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
          Divider(
            color: ColorsUtiles.backGroundColor_gray,
            thickness: 2,
          )
        ],
      ),
    );
  }
}
