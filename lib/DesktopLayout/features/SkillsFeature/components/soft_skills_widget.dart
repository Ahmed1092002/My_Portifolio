// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_portifolio/DesktopLayout/features/SkillsFeature/components/Skills%20Card.dart';
import 'package:my_portifolio/DesktopLayout/features/SkillsFeature/components/skills_animation_widget.dart';

class SoftSkillsWidget extends StatelessWidget {
  final String? title;
  const SoftSkillsWidget({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title!,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          runAlignment: WrapAlignment.spaceEvenly,
          runSpacing: 5,
          spacing: 5,
          children: [
            SkillsAnimationWidget(title: "Problem-solving"),
            SkillsAnimationWidget(title: "Communication skills"),
            SkillsAnimationWidget(title: "Teamwork"),
            SkillsAnimationWidget(title: "Time Management"),
            SkillsAnimationWidget(title: "Adaptability"),
            SkillsAnimationWidget(title: "Attention to Detail"),
          ],
        ),
      ],
    );
  }
}
