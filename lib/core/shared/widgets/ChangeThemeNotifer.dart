import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/themes/light_theme.dart';

class ChangeThemeNotifer extends StatefulWidget {
  const ChangeThemeNotifer({super.key, required this.themeNotifier});

  final ValueNotifier<ThemeMode> themeNotifier;

  @override
  State<ChangeThemeNotifer> createState() => _ChangeThemeNotiferState();
}

class _ChangeThemeNotiferState extends State<ChangeThemeNotifer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 20.w,
        child: SwitchListTile(
          activeColor: ColorsUtiles.white,
          value: widget.themeNotifier.value == ThemeMode.light,
          dense: true,
          activeTrackColor: ColorsUtiles.PrimaryColor_blue,
          mouseCursor: MouseCursor.defer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onChanged: (bool isDarkMode) {
            setState(() {});
            widget.themeNotifier.value =
                isDarkMode ? ThemeMode.light : ThemeMode.dark;
          },
        ),
      ),
    );
  }
}
