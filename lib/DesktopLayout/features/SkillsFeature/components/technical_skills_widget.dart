// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_portifolio/DesktopLayout/features/SkillsFeature/components/skills_animation_widget.dart';

class TechnicalSkillsWidget extends StatelessWidget {
  final String? title;
  const TechnicalSkillsWidget({
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
            SkillsAnimationWidget(title: "Flutter"),
            SkillsAnimationWidget(title: "Dart"),
            SkillsAnimationWidget(title: "Java"),
            SkillsAnimationWidget(title: "Cubit"),
            SkillsAnimationWidget(title: "Bloc"),
            SkillsAnimationWidget(title: "Dio"),
            SkillsAnimationWidget(title: "RESTful APIs"),
            SkillsAnimationWidget(title: "MVVM"),
            SkillsAnimationWidget(title: "SQL Flite"),
            SkillsAnimationWidget(title: "Hive"),
            SkillsAnimationWidget(title: "Shared Preferences"),
            SkillsAnimationWidget(title: "Firebase"),
            SkillsAnimationWidget(title: "Postman"),
            SkillsAnimationWidget(title: "Git & GitHub"),
            SkillsAnimationWidget(title: "UI/UX Design"),
            SkillsAnimationWidget(title: "Localization"),
            SkillsAnimationWidget(title: "Flutter Web"),
            SkillsAnimationWidget(
                title: "Performance and Scalability Optimization"),
            SkillsAnimationWidget(title: "Bug Fixing"),
            SkillsAnimationWidget(title: "GetX"),
            SkillsAnimationWidget(title: "Responsive and Adaptive"),
            SkillsAnimationWidget(title: "Clean Architecture"),
            SkillsAnimationWidget(title: "Agile"),
            SkillsAnimationWidget(title: "Jira"),
           SkillsAnimationWidget(title: "Apache Kafka"),
           SkillsAnimationWidget(title: "Docker"),
             SkillsAnimationWidget(title: "Design Pattern"),
             SkillsAnimationWidget(title: "Object-oriented programming"),
                             SkillsAnimationWidget(title: "Spring Boot"),






          ],
        ),
      ],
    );
  }
}
