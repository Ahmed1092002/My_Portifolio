import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/about_me_image.dart';

class AboutMePhotos extends HookWidget {
  const AboutMePhotos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 30.h,
      spacing: 20,
      children: const [
        AboutMeImage(
          image:
              "assets/images/icons8-flutter-is-an-open-source-mobile-application-development-framework-created-by-google.-96.png",
        ),
        AboutMeImage(
          image: "assets/images/icons8-android-66.png",
        ),
        AboutMeImage(
          image: "assets/images/icons8-ios-48 (1).png",
        ),
        AboutMeImage(
          image: "assets/images/icons8-web-48.png",
        ),
        AboutMeImage(
          image: "assets/images/icons8-desktop-80.png",
        ),
      ],
    );
  }
}
