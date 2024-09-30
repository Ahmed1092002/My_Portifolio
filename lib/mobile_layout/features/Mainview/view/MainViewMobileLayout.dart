import 'package:flutter/material.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/views/AboutMeView.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/ImageContainer.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/info_container.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_app_bar.dart';
import 'package:my_portifolio/mobile_layout/features/HomeViewMobileLayout/gui/components/home_view_mobile_layout.dart';
import 'package:my_portifolio/mobile_layout/features/Mainview/components/CustomAppBarMobileLayout.dart';

class MainViewMobileLayout extends StatefulWidget {
  const MainViewMobileLayout({super.key, required this.themeNotifier});
  final ValueNotifier<ThemeMode> themeNotifier;

  @override
  State<MainViewMobileLayout> createState() => _MainViewMobileLayoutState();
}

class _MainViewMobileLayoutState extends State<MainViewMobileLayout> {
  late ScrollController _scrollController;
  final GlobalKey _homeKey = GlobalKey();
  final GlobalKey _aboutMeKey = GlobalKey();
  void scrollToSection(GlobalKey key) {
    setState(() {
      Scrollable.ensureVisible(
        key.currentContext!,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 950),
      );
    });

  }

  @override
  void initState() {
    // TODO: implement initState

    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppBarMobileLayout(
            themeNotifier: widget.themeNotifier,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const HomeViewMobileLayout(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const AboutMeView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
