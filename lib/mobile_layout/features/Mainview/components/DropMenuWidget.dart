// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_portifolio/core/shared/widgets/ChangeThemeNotifer.dart';
import 'package:my_portifolio/core/shared/widgets/c_v_down_button.dart';
import 'package:my_portifolio/core/shared/widgets/custom_text_button.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';

class DropMenuWidget extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;
  final Function(String) onScroll;

  const DropMenuWidget({
    Key? key,
    required this.themeNotifier,
    required this.onScroll,
  }) : super(key: key);

  @override
  _DropMenuWidgetState createState() => _DropMenuWidgetState();
}

class _DropMenuWidgetState extends State<DropMenuWidget> {
  // Initialize a default selected value
  String? selectedValue;
  Color? _backgroundColor;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: const Icon(
          Icons.list,
          size: 46,
          color: ColorsUtiles.PrimaryColor_blue,
        ),

        dropdownStyleData: DropdownStyleData(
          width: 200.w,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: _backgroundColor,
          ),
          offset: const Offset(0, 8),
        ),
        items: [
          DropdownMenuItem(
            value: 'Home',
            onTap: () => widget.onScroll(KeyUtiles.home),
            child: CustomTextButton(
              title: "Home",
              onScroll: () => widget.onScroll(KeyUtiles.home),
            ),
          ),
          DropdownMenuItem(
            value: 'about_me',
            onTap: () => widget.onScroll(KeyUtiles.aboutMe),
            child: CustomTextButton(
              title: "About Me",
              onScroll: () => widget.onScroll(KeyUtiles.aboutMe),
            ),
          ),
          DropdownMenuItem(
            value: 'education',
                        onTap: () => widget.onScroll(KeyUtiles.education),

            child: CustomTextButton(
              title: "Education",
                            onScroll: () => widget.onScroll(KeyUtiles.education),

            ),
          ),
          DropdownMenuItem(
            value: 'experience',
            onTap: () => widget.onScroll(KeyUtiles.experience),
            child: CustomTextButton(
              title: "Experience",
              onScroll: () => widget.onScroll(KeyUtiles.experience),

            ),
          ),
          // DropdownMenuItem(
          //   value: 'skills',
          //   child: CustomTextButton(
          //     title: "Skills",
          //   ),
          // ),
          // DropdownMenuItem(
          //   value: 'projects',
          //   child: CustomTextButton(
          //     title: "Projects",
          //   ),
          // ),
          // DropdownMenuItem(
          //   value: 'contact_me',
          //   child: CustomTextButton(
          //     title: "Contact me",
          //   ),
          // ),
          DropdownMenuItem(
            value: 'cv_download',
            child: CVDownButton(),
          ),
          DropdownMenuItem(
            value: 'change_theme',
            onTap: () {
              if (isOpen) {
                _backgroundColor = ColorsUtiles.white;
              } else {
                _backgroundColor = ColorsUtiles.PrimaryColor_blue;
              }
            },
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Row(
                children: [
                  CustomTextButton(
                    title: widget.themeNotifier.value == ThemeMode.dark
                        ? "Dark Mode"
                        : "Light Mode",
                  ),
                  ChangeThemeNotifer(
                    themeNotifier: widget.themeNotifier,
                  ),
                ],
              ),
            ),
          ),
        ],
        // Set the selected value
        value: selectedValue,
        onMenuStateChange: (value) {
          setState(() {
            isOpen = value;
          });
        },

        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
      ),
    );
  }
}
