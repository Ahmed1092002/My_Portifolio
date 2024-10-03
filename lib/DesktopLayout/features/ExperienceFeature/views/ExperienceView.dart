import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/EducationFeature/components/education_container.dart';
import 'package:my_portifolio/DesktopLayout/features/ExperienceFeature/components/ExperienceCard.dart';
import 'package:my_portifolio/core/shared/widgets/CustomAnimationWidget.dart';
import 'package:my_portifolio/core/shared/widgets/custom_small_image.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAnimationWidget(
              offset: Offset(0, 1),
              educationList: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomSmallImage(
                          image: "assets/images/briefcase.png"),
                      SizedBox(
                        height: 50.h,
                      ),
                      Text(
                        'My Experience',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            Wrap(
              spacing: 10.w,
              runSpacing: 10.w,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              runAlignment: WrapAlignment.start,
              direction: Axis.horizontal,
              children: [
                CustomAnimationWidget(
                  title: "Experience",
                  educationList: [
                    const ExperienceCard(
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
                CustomAnimationWidget(
                  title: "Volunteering Experience",
                  educationList: [
                    const ExperienceCard(
                      title: "HR Link, Member",
                      date: "Oct 2021 – Apr 2022",
                      company: "Cairo, Egypt",
                      duration: "Duration: 1 Year",
                    ),
                    const ExperienceCard(
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
