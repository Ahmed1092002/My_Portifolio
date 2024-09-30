import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/components/about_me_text.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';

class AboutMeView extends HookWidget {
  const AboutMeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Animation controller for slide and opacity
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1), // Adjust duration as needed
    );

    // Slide transition animation from left to right
    final slideTransition = useMemoized(() => Tween<Offset>(
          begin: const Offset(-1, 0), // Start off-screen to the left
          end: Offset.zero, // End position (on-screen)
        ).animate(CurvedAnimation(
          parent: animationController,
          curve: Curves.fastEaseInToSlowEaseOut, // Smooth animation
        )));

    // Opacity animation from 0 to 1
    final opacity = useAnimation(animationController.drive(
      Tween<double>(begin: 0.0, end: 1.0),
    ));

    useEffect(() {
      animationController.forward(); // Start the animation
      return null;
    }, []);

    return Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      runSpacing: 30.h,
      spacing: 20,
      children: [
        AboutMeText(slideTransition: slideTransition, opacity: opacity),
        AboutMePhotos(),
      ],
    );
  }
}

class AboutMePhotos extends StatelessWidget {
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

class AboutMeImage extends StatelessWidget {
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
          width: 100.w,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
