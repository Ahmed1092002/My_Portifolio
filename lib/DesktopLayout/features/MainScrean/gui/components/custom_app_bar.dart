import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/utiles/Assets.dart';
import 'package:my_portifolio/core/shared/widgets/ChangeThemeNotifer.dart';
import 'package:my_portifolio/core/shared/widgets/c_v_down_button.dart';
import 'package:my_portifolio/core/shared/widgets/custom_text_button.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';

class CustomAppBar extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;
  final Function(String) onScroll;

  const CustomAppBar({super.key, required this.themeNotifier , required this.onScroll});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 140.w,
      
      // pinned: true,
      leading: Image.asset(
        Assets.logoNameAssets,
        fit: BoxFit.contain,
        width: 50.w,
      ),
      actions: [
         CustomTextButton(
          title: "Home",
          onScroll: ()=>widget.onScroll(KeyUtiles.home),
        ),
        CustomTextButton(
          title: "About Me",
          onScroll: ()=>widget.onScroll(KeyUtiles.aboutMe),

        ),

        CustomTextButton(
          title: "Education",
          onScroll: () => widget.onScroll(KeyUtiles.education),

        ),
        CustomTextButton(title: "Experience",
                  onScroll: () => widget.onScroll(KeyUtiles.experience),

        ),
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
          themeNotifier: widget.themeNotifier,
        ),
        SizedBox(
          width: 50.0,
        )
      ],
    );
  }
}
