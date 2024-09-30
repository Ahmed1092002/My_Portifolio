import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/utiles/Assets.dart';

class ImageContainer extends HookWidget {
  const ImageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final animationController = useAnimationController(
      duration: const Duration(seconds: 1),
    );

    final slideTransition = useMemoized(() => Tween<Offset>(
          begin: const Offset(1, 0), // Start off-screen from the bottom
          end: Offset.zero,
          // End position (on-screen)
        ).animate(CurvedAnimation(
          parent: animationController,
          curve: Curves.fastEaseInToSlowEaseOut,
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
            child: Image.asset(
              Assets.ProfileAssets,
              width: 500.w,
              scale: 0.5,
            )));
  }
}
