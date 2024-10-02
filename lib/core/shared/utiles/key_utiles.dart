import 'package:flutter/material.dart';

class KeyUtiles {
   static final GlobalKey homeKey = GlobalKey();
static  final GlobalKey aboutMeKey = GlobalKey();

  static const String home = "home";
  static const String aboutMe = "about me";
  static const String education = "education";
  static const String experience = "experience";
   static void scrollToSection(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    }
  }
}