import 'package:flutter/material.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/ImageContainer.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/info_container.dart';

class HomeViewMobileLayout extends StatelessWidget {
  const HomeViewMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {

   return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [const InfoContainer(), ImageContainer()],
      ),
    );
  }
 
}
