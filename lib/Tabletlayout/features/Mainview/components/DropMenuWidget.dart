import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/ChangeThemeNotifer.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/c_v_down_button.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_text_button.dart';
import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';

class DropMenuWidget extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const DropMenuWidget({super.key, required this.themeNotifier});

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
            value: 'about_me',
            child: CustomTextButton(
              title: "About Me",
            ),
          ),
          DropdownMenuItem(
            value: 'education',
            child: CustomTextButton(
              title: "Education",
            ),
          ),
          DropdownMenuItem(
            value: 'experience',
            child: CustomTextButton(
              title: "Experience",
            ),
          ),
          DropdownMenuItem(
            value: 'skills',
            child: CustomTextButton(
              title: "Skills",
            ),
          ),
          DropdownMenuItem(
            value: 'projects',
            child: CustomTextButton(
              title: "Projects",
            ),
          ),
          DropdownMenuItem(
            value: 'contact_me',
            child: CustomTextButton(
              title: "Contact me",
            ),
          ),
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
