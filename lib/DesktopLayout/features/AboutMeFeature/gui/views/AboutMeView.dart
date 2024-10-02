import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/about_me_image.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/about_me_photos.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/about_me_text.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/my_biographay_widget.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AboutMeView extends HookWidget {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Animation controller for slide and opacity
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1),
    );

    final slideTransition = useMemoized(() => Tween<Offset>(
          begin: const Offset(-1, 0), // Start off-screen from the left
          end: Offset.zero,
        ).animate(CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        )));
    final opacity = useAnimation(animationController.drive(
      Tween<double>(begin: 0.0, end: 1.0),
    ));

    useEffect(() {
      animationController.forward();
    });

    return SingleChildScrollView(
      child: Column(
        children: [
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runSpacing: 30.h,
            spacing: 20.h,
            children: [
              AboutMeText(slideTransition: slideTransition, opacity: opacity),
              AboutMePhotos(),
            ],
          ),
          MyBiographayWidget()
        ],
      ),
    );
  }
}
