import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/SkillsFeature/components/Skills%20Card.dart';
import 'package:my_portifolio/DesktopLayout/features/SkillsFeature/components/skills_animation_widget.dart';
import 'package:my_portifolio/DesktopLayout/features/SkillsFeature/components/soft_skills_widget.dart';
import 'package:my_portifolio/DesktopLayout/features/SkillsFeature/components/technical_skills_widget.dart';
import 'package:my_portifolio/core/shared/widgets/CustomAnimationWidget.dart';
import 'package:my_portifolio/core/shared/widgets/custom_small_image.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            CustomAnimationWidget(
              offset: Offset(0, 1),
              educationList: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomSmallImage(
                          image: "assets/images/solution.png"),
                      SizedBox(
                        height: 50.h,
                      ),
                      Text(
                        'My Skills',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 20.h,
            ),
            TechnicalSkillsWidget(
              title: "Technical Skills",
            ),
            // Soft skills can be added similarly, but using SkillsCard
            SizedBox(
              height: 20.h,
            ),
            SoftSkillsWidget(
              title: "Soft Skills ",
            ),
          ],
        ),
      ),
    );
  }
}
