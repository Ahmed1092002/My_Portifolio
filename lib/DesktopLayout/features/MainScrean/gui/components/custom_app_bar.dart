import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/utiles/Assets.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/ChangeThemeNotifer.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/c_v_down_button.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_text_button.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';

class CustomAppBar extends StatelessWidget {
  final ValueNotifier<ThemeMode> themeNotifier;
  final Function(String) onScroll;

  const CustomAppBar({super.key, required this.themeNotifier , required this.onScroll});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leadingWidth: 140.w,
      
      pinned: true,
      leading: Image.asset(
        Assets.logoNameAssets,
        fit: BoxFit.contain,
        width: 50.w,
      ),
      actions: [
         CustomTextButton(
          title: "Home",
          onScroll: ()=>onScroll(KeyUtiles.home),
        ),
        CustomTextButton(
          title: "About Me",
          onScroll: ()=>onScroll(KeyUtiles.aboutMe),

        ),

        // CustomTextButton(
        //   title: "Education",
        // ),
        // CustomTextButton(title: "Experience"),
        // CustomTextButton(title: "Skills"),
        // CustomTextButton(
        //   title: "Projects",
        // ),
        // CustomTextButton(
        //   title: "Contact me",
        // ),
        CVDownButton(),
        SizedBox(
          width: 10.0,
        ),
        ChangeThemeNotifer(
          themeNotifier: themeNotifier,
        ),
        SizedBox(
          width: 50.0,
        )
      ],
    );
  }
}
