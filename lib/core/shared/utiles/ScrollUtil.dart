// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_portifolio/core/shared/utiles/key_utiles.dart';

class ScrollUtil {
  final PageController pageController;
  ScrollUtil({
    required this.pageController,
  });

  void scrollToSection(String section) {
    switch (section) {
      case KeyUtiles.home:
        pageController.jumpToPage(0);
      case KeyUtiles.aboutMe:
        pageController.jumpToPage(1);
        break;
    }
  }
}
