// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_portifolio/core/shared/utiles/Assets.dart';
import 'package:my_portifolio/mobile_layout/features/Mainview/components/DropMenuWidget.dart';

class CustomAppBarMobileLayout extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;
  final Function(String) onScroll;

  const CustomAppBarMobileLayout({
    Key? key,
    required this.themeNotifier,
    required this.onScroll,
  }) : super(key: key);

  @override
  State<CustomAppBarMobileLayout> createState() => _CustomAppBarMobileLayoutState();
}

class _CustomAppBarMobileLayoutState extends State<CustomAppBarMobileLayout> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // pinned: true,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          Assets.logoNameAssets,
          width: 50.w,
        ),
      ),
      actions: [
        DropMenuWidget(
          themeNotifier: widget.themeNotifier,
          onScroll: (string) {
            widget.onScroll(string);
          },
        ),
      ],
    );
  }
}
