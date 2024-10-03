// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/my_bio_list.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/my_biographay_details_widget.dart';

import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/widgets/CustomAnimationWidget.dart';
import 'package:my_portifolio/core/shared/widgets/custom_small_image.dart';

class MyBiographayWidget extends StatelessWidget {
  const MyBiographayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        CustomAnimationWidget(
          offset: Offset(-1, 0),
          educationList: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSmallImage(image: "assets/images/resume.png"),
                Text(
                  "My Biography",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            )
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
        const MyBioList()
      ],
    );
  }
}
