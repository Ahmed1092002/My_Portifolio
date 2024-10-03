import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/ImageContainer.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/info_container.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';

class HomeView extends StatelessWidget {
  final VoidCallback onScroll;

  const HomeView({
    Key? key,
    required this.onScroll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 100),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 30.h,
          spacing: 20,
          children: [
            SizedBox(
                width: 800.w,
                child: InfoContainer(
                  onScroll: onScroll,
                )),
            ImageContainer()
          ],
        ),
      ),
    );
  }
}
