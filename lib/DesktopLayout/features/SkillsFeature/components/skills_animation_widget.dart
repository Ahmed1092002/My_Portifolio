// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:my_portifolio/DesktopLayout/features/SkillsFeature/components/Skills%20Card.dart';
import 'package:my_portifolio/core/shared/widgets/CustomAnimationWidget.dart';

class SkillsAnimationWidget extends StatelessWidget {
  final String title;
  const SkillsAnimationWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAnimationWidget(educationList: [
      SkillsCard(
        title: title,
      ),
    ]);
  }
}
