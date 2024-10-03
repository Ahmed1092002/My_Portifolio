import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:my_portifolio/core/shared/colors/ColorsUtiles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ExperienceCard extends StatelessWidget {
  final String title;
  final String date;
  final String company;
  final String location;
  final String description;
  final String duration;

  const ExperienceCard({
    Key? key,
    required this.title,
    required this.date,
    required this.company,
    this.location = "",
    this.description = "",
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = ScreenUtil().screenWidth;

    return ResponsiveBuilder(builder: (context, size) {
      if (size.deviceScreenType == DeviceScreenType.mobile) {
        return Container(
          margin: EdgeInsets.only(bottom: 16.0.h),
          padding: EdgeInsets.all(16.0.w),
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(20.r)), // Responsive radius
            color: ColorsUtiles.PrimaryColor_blue,
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp, // Responsive font size
                  ),
                ),
                SizedBox(height: 8.h), // Responsive spacing
                Text(
                  date,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 16.sp, // Responsive font size
                      ),
                ),
                SizedBox(height: 4.h),
                Text(
                  company,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 16.sp, // Responsive font size
                      ),
                ),
                if (location.isNotEmpty)
                  Text(
                    location,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 16.sp, // Responsive font size
                        ),
                  ),
                if (description.isNotEmpty) ...[
                  SizedBox(height: 12.h),
                  Container(
                    constraints: BoxConstraints(maxWidth: 300.w),
                    child: Text(
                      description,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: 14.sp, // Responsive font size
                          ),
                    ),
                  ),
                ],
                SizedBox(height: 8.h),
                ElevatedButton(
                  onPressed: null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsUtiles.PrimaryColor_blue,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(8.0.r), // Responsive radius
                    ),
                  ),
                  child: Text(
                    duration,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp, // Responsive font size
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(bottom: 16.0.h),
        padding: EdgeInsets.all(16.0.w),
        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(20.r)), // Responsive radius
          color: ColorsUtiles.PrimaryColor_blue,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp, // Responsive font size
                ),
              ),
              SizedBox(height: 8.h), // Responsive spacing
              Text(
                date,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 16.sp, // Responsive font size
                    ),
              ),
              SizedBox(height: 4.h),
              Text(
                company,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 16.sp, // Responsive font size
                    ),
              ),
              if (location.isNotEmpty)
                Text(
                  location,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 16.sp, // Responsive font size
                      ),
                ),
              if (description.isNotEmpty) ...[
                SizedBox(height: 12.h),
                Container(
                  // constraints: BoxConstraints(maxWidth: 300.w),
                  child: Text(
                    description,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 14.sp, // Responsive font size
                        ),
                  ),
                ),
              ],
              SizedBox(height: 8.h),
              ElevatedButton(
                onPressed: null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsUtiles.PrimaryColor_blue,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8.0.r), // Responsive radius
                  ),
                ),
                child: Text(
                  duration,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp, // Responsive font size
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
