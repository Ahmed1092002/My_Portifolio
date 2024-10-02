import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/EducationFeature/components/education_container.dart';
import 'package:my_portifolio/DesktopLayout/features/ExperienceFeature/components/ExperienceCard.dart';
import 'package:my_portifolio/core/shared/widgets/CustomAnimationWidget.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text(
                'My Experience',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Wrap(
              spacing: 10.w,
              runSpacing: 10.w,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              runAlignment: WrapAlignment.start,
              direction: Axis.horizontal,
          
              children: [
                const CustomAnimationWidget(
                  title: "Experience",
                  educationList: [
                    ExperienceCard(
                      title: "Flutter Developer",
                      date: "Apr 2024 – Jun 2024",
                      company: "Ahjazili, Freelance Project",
                      location: "Cairo, Egypt",
                      duration: "Duration: 3 Months",
                      description:
                          "• Developed an innovative platform connecting merchants and customers in Libya.\n• Utilized Flutter, Dart, Firebase, and Dio for development and API integration.",
                    ),
                  ],
                ),
                SizedBox(
                  width: 50.w,
                ),
                const CustomAnimationWidget(
                  title: "Volunteering Experience",
                  educationList: [
                    ExperienceCard(
                      title: "HR Link, Member",
                      date: "Oct 2021 – Apr 2022",
                      company: "Cairo, Egypt",
                      duration: "Duration: 1 Year",
                    ),
                    ExperienceCard(
                      title: "MSP Graphic Design",
                      date: "Oct 2021 – Aug 2022",
                      company: "Cairo, Egypt",
                      duration: "Duration: 1 Year",
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
