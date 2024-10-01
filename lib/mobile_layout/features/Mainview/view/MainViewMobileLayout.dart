import 'package:flutter/material.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/views/AboutMeView.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/ImageContainer.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/info_container.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_app_bar.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';
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
    final context = key.currentContext;
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeInOut,
    );
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
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          CustomAppBarMobileLayout(
            themeNotifier: widget.themeNotifier,
            onScroll: (String section) {
              switch (section) {
                case KeyUtiles.home:
                  scrollToSection(_homeKey);
                  break;
                case KeyUtiles.aboutMe:
                  scrollToSection(_aboutMeKey);
                  break;
                // Add cases for other sections
              }
            },
          ),
          SliverList(
            key: _homeKey,
            delegate: SliverChildListDelegate(
              [
                HomeViewMobileLayout(),
                SizedBox(
                    height:
                        500), // Add height between sections to ensure enough scroll space

                // Gap between Home and About Me
              ],
            ),
          ),
          SliverList(
            key: _aboutMeKey,
            delegate: SliverChildListDelegate(
              [
                AboutMeView(),
                SizedBox(
                    height:
                        500), // Add height between sections to ensure enough scroll space
              ],
            ),
          ),
        ],
      ),
    );
  }
}
