import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/utiles/Assets.dart';
import 'package:my_portifolio/mobile_layout/features/Mainview/components/DropMenuWidget.dart';

class CustomAppBarMobileLayout extends StatelessWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const CustomAppBarMobileLayout({super.key, required this.themeNotifier});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          Assets.logoNameAssets,
          width: 50.w,
        ),
      ),
      actions: [
        DropMenuWidget(
          themeNotifier: themeNotifier,
        ),
      ],
    );
  }
}
