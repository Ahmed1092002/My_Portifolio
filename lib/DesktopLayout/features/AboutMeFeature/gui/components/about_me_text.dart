import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/core/shared/themes/dark_theme.dart';
import 'package:my_portifolio/core/shared/widgets/custom_small_image.dart';

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
              Row(
                children: [
                  CustomSmallImage(
                    image: "assets/images/information.png",
                  ),
                  Text(
                    "About Me",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),
              // Text(
              //   """I’m Ahmed Tamer Elsayed, a Flutter Developer based in Cairo, Egypt.\n With a Bachelor’s Degree in Computer Science from Helwan University,\n I specialize in creating efficient, user-friendly applications using Flutter and Dart.\n I thrive on solving real-world problems through innovative technology,\n focusing on clean architecture and performance optimization.\n Passionate about continuous learning and collaboration,\n I’m excited to contribute to impactful projects.""",
              //   style: Theme.of(context).textTheme.titleSmall,
              // ),
              Text(
                """I'm Ahmed Tamer Elsayed, a passionate software developer specializing in full-stack development and Flutter applications. With a strong foundation in programming and problem-solving, I have experience in building responsive, scalable applications using technologies like Flutter, Dart, Firebase, and Java. I’m dedicated to delivering high-quality software solutions and continuously enhancing my skills to stay updated with the latest technologies.""",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: 17.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
