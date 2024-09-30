import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/views/AboutMeView.dart';
import 'package:my_portifolio/Tabletlayout/features/Mainview/components/CustomAppBarMobileLayout.dart';
import 'package:my_portifolio/core/shared/utiles/Assets.dart';

import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/views/HomeView.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_app_bar.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';
import 'package:my_portifolio/mobile_layout/features/Mainview/components/DropMenuWidget.dart';

class MainView extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const MainView({super.key, required this.themeNotifier});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
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
    key.currentState?.activate();
    key.currentState?.build(context);
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
          MediaQuery.of(context).size.width > 850.w
              ? CustomAppBar(
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
                )
              : CustomAppBarMobileLayout(themeNotifier: widget.themeNotifier),
          SliverList(
            key: _homeKey,
            delegate: SliverChildListDelegate(
              [
                HomeView(),
                SizedBox(
                    height: MediaQuery.of(context)
                        .size
                        .height), // Gap between Home and About Me

                // Add other sections here with GlobalKey
              ],
            ),
          ),
          SliverList(
            key: _aboutMeKey,
            delegate: SliverChildListDelegate(
              [
                AboutMeView(),
                SizedBox(
                    height: MediaQuery.of(context)
                        .size
                        .height), // Gap between Home and About Me

                // Add other sections here with GlobalKey
              ],
            ),
          ),
        ],
      ),
    );
  }
}
