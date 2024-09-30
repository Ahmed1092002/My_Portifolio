import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/utiles/Assets.dart';
import 'package:my_portifolio/core/shared/widgets/custom_button.dart';

class InfoContainer extends HookWidget {
  const InfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1),
    );

    final slideTransition = useMemoized(() => Tween<Offset>(
          begin: const Offset(-1, 0), // Start off-screen from the bottom
          end: Offset.zero,
          // End position (on-screen)
        ).animate(CurvedAnimation(
          parent: animationController,
          curve: Curves.easeInOut,
        )));
    final opacity = useAnimation(animationController.drive(
      Tween<double>(begin: 0.0, end: 1.0),
    ));

    useEffect(() {
      animationController.forward();
      return null;
    });

    return SlideTransition(
      position: slideTransition,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(seconds: 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, I am",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Image.asset(
              Assets.NameAssets,
              width: 700.w,
            ),
            Text(
              "Flutter Developer",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Row(
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
                    onClick: () {},
                    title: "Know More")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
