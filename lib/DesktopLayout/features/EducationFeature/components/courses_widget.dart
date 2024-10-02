import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/EducationFeature/components/education_container.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';

class CoursesWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Courses',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Wrap(
          spacing: 10.w,
          runSpacing: 10.w,
          alignment: WrapAlignment.spaceAround,
          crossAxisAlignment: WrapCrossAlignment.start,
          runAlignment: WrapAlignment.start,
          direction: Axis.vertical,
          children: [
            EducationCard(
              title: '1. Flutter Course',
              subtitle: 'Eraa Soft \n  (Jul 2023 – Feb 2024 )| Cairo, Egypt ',
              duration: 'Duration: 07 Months',
            ),
            EducationCard(
              title: '2. Workshop Flutter',
              subtitle:
                  'Minders Student Activity \n (Jul 2022 – Aug 2022) | Cairo, Egypt',
              duration: 'Duration: 02 Months ',
            ),
          ],
        )
      ],
    );
  }
}
