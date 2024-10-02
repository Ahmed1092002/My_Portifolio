import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AboutMeText extends HookWidget {
  const AboutMeText({
    super.key,
    required this.slideTransition,
    required this.opacity,
  });

  final Animation<Offset> slideTransition;
  final double opacity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: SlideTransition(
        position: slideTransition,
        child: AnimatedOpacity(
          opacity: opacity,
          duration:
              const Duration(seconds: 1), // Match opacity animation duration
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              Text(
                "About Me",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                """I’m Ahmed Tamer Elsayed, a Flutter Developer based in Cairo, Egypt.\n With a Bachelor’s Degree in Computer Science from Helwan University,\n I specialize in creating efficient, user-friendly applications using Flutter and Dart.\n I thrive on solving real-world problems through innovative technology,\n focusing on clean architecture and performance optimization.\n Passionate about continuous learning and collaboration,\n I’m excited to contribute to impactful projects.""",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
