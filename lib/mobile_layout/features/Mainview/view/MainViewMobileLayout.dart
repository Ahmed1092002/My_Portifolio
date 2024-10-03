// import 'package:flutter/material.dart';
// import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/views/AboutMeView.dart';
// import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/ImageContainer.dart';
// import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/info_container.dart';
// import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_app_bar.dart';
// import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';
// import 'package:my_portifolio/mobile_layout/features/HomeViewMobileLayout/gui/components/home_view_mobile_layout.dart';
// import 'package:my_portifolio/mobile_layout/features/Mainview/components/CustomAppBarMobileLayout.dart';

// class MainViewMobileLayout extends StatefulWidget {
//   const MainViewMobileLayout({super.key, required this.themeNotifier});
//   final ValueNotifier<ThemeMode> themeNotifier;

//   @override
//   State<MainViewMobileLayout> createState() => _MainViewMobileLayoutState();
// }

// class _MainViewMobileLayoutState extends State<MainViewMobileLayout> {
//   late ScrollController _scrollController;

//   @override
//   void initState() {
//     // TODO: implement initState

//     _scrollController = ScrollController();
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         controller: _scrollController,
//         physics: const BouncingScrollPhysics(),
//         slivers: [
//           CustomAppBarMobileLayout(
//             themeNotifier: widget.themeNotifier,
//              onScroll: (String section) {
//               switch (section) {
//                 case KeyUtiles.home:
//                   KeyUtiles.scrollToSection(KeyUtiles.homeKey);
//                   break;
//                 case KeyUtiles.aboutMe:
//                   KeyUtiles.scrollToSection(KeyUtiles.aboutMeKey);
//                   break;
//                 // Add cases for other sections
//               }
//             },
//           ),
//           SliverList(
//             key: KeyUtiles.homeKey,
//             delegate: SliverChildListDelegate(
//               [
//                 HomeViewMobileLayout(),
//                 SizedBox(
//                     height:
//                         500), // Add height between sections to ensure enough scroll space

//                 // Gap between Home and About Me
//               ],
//             ),
//           ),
//           SliverList(
//             key: KeyUtiles.aboutMeKey,
//             delegate: SliverChildListDelegate(
//               [
//                 AboutMeView(),
//                 SizedBox(
//                     height:
//                         500), // Add height between sections to ensure enough scroll space
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/views/AboutMeView.dart';
import 'package:my_portifolio/DesktopLayout/features/EducationFeature/view/EducationView.dart';
import 'package:my_portifolio/DesktopLayout/features/ExperienceFeature/views/ExperienceView.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/mobile_layout/features/HomeViewMobileLayout/gui/components/home_view_mobile_layout.dart';
import 'package:my_portifolio/mobile_layout/features/Mainview/components/CustomAppBarMobileLayout.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';

class MainViewMobileLayout extends StatefulWidget {
  const MainViewMobileLayout({super.key, required this.themeNotifier});
  final ValueNotifier<ThemeMode> themeNotifier;

  @override
  State<MainViewMobileLayout> createState() => _MainViewMobileLayoutState();
}

class _MainViewMobileLayoutState extends State<MainViewMobileLayout> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(); // Initialize PageController
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose of PageController
    super.dispose();
  }

  void _scrollToSection(String section) {
    switch (section) {
      case KeyUtiles.home:
        // _pageController.jumpToPage(0); // HomeView
        _pageController.animateToPage(0,
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeInOut); // HomeView
        break;
      case KeyUtiles.aboutMe:
        _pageController.animateToPage(2,
            duration: Duration(milliseconds: 1000), curve: Curves.easeInOut);
      case KeyUtiles.education:
        _pageController.animateToPage(4,
            duration: Duration(milliseconds: 1000), curve: Curves.easeInOut);
      case KeyUtiles.experience:
        _pageController.animateToPage(6,
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeInOut); // AboutMeView
        break;
      // Add cases for other sections
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 50),
        child: CustomAppBarMobileLayout(
          themeNotifier: widget.themeNotifier,
          onScroll:
              _scrollToSection, // Use scrollToSection to navigate via PageView
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical, // Vertical scrolling
        controller: _pageController, // PageController for controlling the pages
        children: [
          HomeViewMobileLayout(
            onScroll: () {
              _scrollToSection(KeyUtiles.aboutMe);
            },
          ),
          SizedBox(
            height: MediaQuery.maybeOf(context)?.size.height.h,
          ), // First Page (Home)
          AboutMeView(),
          SizedBox(
            height: MediaQuery.maybeOf(context)?.size.height.h,
          ), // First Page (Home)
          EducationView(),
          SizedBox(height: 150.h),
          ExperienceView() // Second Page (About Me)
        ],
      ),
    );
  }
}
