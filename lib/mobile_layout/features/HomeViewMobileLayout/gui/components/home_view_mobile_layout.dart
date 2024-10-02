// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/ImageContainer.dart';
import 'package:my_portifolio/DesktopLayout/features/HomeFeatures/gui/components/info_container.dart';

class HomeViewMobileLayout extends StatelessWidget {
  final VoidCallback onScroll;

  const HomeViewMobileLayout({
    Key? key,
    required this.onScroll,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InfoContainer(
            onScroll: onScroll,
          ),
          Expanded(child: ImageContainer())
        ],
      ),
    );
  }
}
