// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:my_portifolio/DesktopLayout/features/AboutMeFeature/gui/views/AboutMeView.dart';
// import 'package:my_portifolio/core/shared/utiles/Assets.dart';

// import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/views/HomeView.dart';
// import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_app_bar.dart';
// import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';
// import 'package:my_portifolio/mobile_layout/features/Mainview/components/CustomAppBarMobileLayout.dart';
// import 'package:my_portifolio/mobile_layout/features/Mainview/components/DropMenuWidget.dart';

// class MainView extends StatefulWidget {
//   final ValueNotifier<ThemeMode> themeNotifier;

//   const MainView({super.key, required this.themeNotifier});

//   @override
//   State<MainView> createState() => _MainViewState();
// }

// class _MainViewState extends State<MainView> {
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
//           MediaQuery.of(context).size.width > 850.w
//               ? CustomAppBar(
//                   themeNotifier: widget.themeNotifier,
//                   onScroll: (String section) {
//                     switch (section) {
//                       case KeyUtiles.home:
//                       KeyUtiles.scrollToSection(KeyUtiles.homeKey);
//                         break;
//                       case KeyUtiles.aboutMe:
//                          KeyUtiles.scrollToSection(KeyUtiles.aboutMeKey);
//                         break;
//                       // Add cases for other sections
//                     }
//                   },
//                 )
//               : CustomAppBarMobileLayout(
//                   themeNotifier: widget.themeNotifier,
//                  onScroll: (String section) {
//                     switch (section) {
//                       case KeyUtiles.home:
//                         KeyUtiles.scrollToSection(KeyUtiles.homeKey);
//                         break;
//                       case KeyUtiles.aboutMe:
//                         KeyUtiles.scrollToSection(KeyUtiles.aboutMeKey);
//                         break;
//                       // Add cases for other sections
//                     }
//                   },
//                 ),
//           SliverList(
//             key: KeyUtiles.homeKey,
//             delegate: SliverChildListDelegate(
//               [
//                 HomeView(),
//                 SizedBox(
//                     height: MediaQuery.of(context)
//                         .size
//                         .height.h), // Gap between Home and About Me

//                 // Add other sections here with GlobalKey
//               ],
//             ),
//           ),
//           SliverList(
//             key: KeyUtiles.aboutMeKey,
//             delegate: SliverChildListDelegate(
//               [
//                 AboutMeView(),
//                 SizedBox(
//                     height: MediaQuery.of(context)
//                         .size
//                         .height), // Gap between Home and About Me

//                 // Add other sections here with GlobalKey
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
import 'package:my_portifolio/core/shared/utiles/Assets.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/views/HomeView.dart';
import 'package:my_portifolio/DesktopLayout/features/MainScrean/gui/components/custom_app_bar.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';
import 'package:my_portifolio/mobile_layout/features/Mainview/components/CustomAppBarMobileLayout.dart';

class MainView extends StatefulWidget {
  final ValueNotifier<ThemeMode> themeNotifier;

  const MainView({super.key, required this.themeNotifier});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
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
            duration: Duration(milliseconds: 1000),
            curve: Curves.easeInOut); // AboutMeView
        break;
      // Add cases for other sections
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width > 850.w
          ? PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width.w, 50.h),
              child: CustomAppBar(
                themeNotifier: widget.themeNotifier,
                onScroll: _scrollToSection,
              ),
            )
          : PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width.w, 50.h),
              child: CustomAppBarMobileLayout(
                themeNotifier: widget.themeNotifier,
                onScroll: _scrollToSection,
              ),
            ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        children: [
          // MediaQuery.of(context).size.width > 850.w
          //     ? CustomAppBar(
          //         themeNotifier: widget.themeNotifier,
          //         onScroll: _scrollToSection,
          //       )
          //     : CustomAppBarMobileLayout(
          //         themeNotifier: widget.themeNotifier,
          //         onScroll: _scrollToSection,
          //       ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: HomeView(
              onScroll: () {
                _scrollToSection(KeyUtiles.aboutMe);
              },
            ),
          ),
          // SizedBox(height: MediaQuery.of(context).size.height.h),
          SizedBox(height: 150.h),

          AboutMeView(),
          SizedBox(height: 150.h),

          EducationView(),
        ],
      ),
    );
  }
}
