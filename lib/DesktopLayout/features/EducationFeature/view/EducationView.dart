import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portifolio/DesktopLayout/features/EducationFeature/components/courses_widget.dart';
import 'package:my_portifolio/DesktopLayout/features/EducationFeature/components/education_container.dart';
import 'package:my_portifolio/core/shared/widgets/CustomAnimationWidget.dart';

class EducationView extends HookWidget {
  const EducationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'My Education Qualification',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 10.w,
            runSpacing: 10.w,
            crossAxisAlignment: WrapCrossAlignment.start,
            runAlignment: WrapAlignment.spaceAround,
            children: [
              const EducationWidget(
                title:"Academic Education" ,
                educationList: [
                  EducationCard(
                    title: 'Helwan University',
                    subtitle:
                        "Bachelor\'s Degree in Computer Science \nDepartment: Information Systems\nGPA: Good (2.78) | Cairo, Egypt ",
                    duration: "Duration: 4 Years (Oct 2020 – Jul 2024)",
                  ),
                ],
              ),  
                            SizedBox(
                width: 50.w,
              ),    
                      const EducationWidget(
                        title: "Courses",
                educationList: [
                  EducationCard(
                    title: '1. Flutter Course',
                    subtitle:
                        'Eraa Soft \n  (Jul 2023 – Feb 2024 )| Cairo, Egypt ',
                    duration: 'Duration: 07 Months',
                  ),
                  EducationCard(
                    title: '2. Workshop Flutter',
                    subtitle:
                        'Minders Student Activity \n (Jul 2022 – Aug 2022) | Cairo, Egypt',
                    duration: 'Duration: 02 Months ',
                  ),
                ],
              ),

              // CoursesWidget()
            ],
          ),
        ],
      ),
    );
  }
}
