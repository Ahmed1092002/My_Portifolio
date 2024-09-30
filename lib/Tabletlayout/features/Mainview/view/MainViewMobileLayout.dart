import 'package:flutter/material.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/ImageContainer.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/info_container.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_app_bar.dart';
import 'package:my_portifolio/mobile_layout/features/HomeViewMobileLayout/gui/components/home_view_mobile_layout.dart';
import 'package:my_portifolio/mobile_layout/features/Mainview/components/CustomAppBarMobileLayout.dart';

class MainViewMobileLayout extends StatelessWidget {
  const MainViewMobileLayout({super.key, required this.themeNotifier});
  final ValueNotifier<ThemeMode> themeNotifier;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppBarMobileLayout(
            themeNotifier: themeNotifier,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const HomeViewMobileLayout(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
