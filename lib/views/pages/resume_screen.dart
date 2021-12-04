import 'package:flutter/material.dart';
import 'package:mainul_dev/common/responsive_widget.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/strings.dart';
import 'package:mainul_dev/views/widgets/education_widget.dart';
import 'package:mainul_dev/views/widgets/experience_widget.dart';
import 'package:mainul_dev/views/widgets/skill_widget.dart';

class ResumeScreen extends StatelessWidget {
  final Size screenSize;
  ResumeScreen(Key key, {required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: screenSize.height),
      child: Row(
        children: [
          Expanded(flex: ResponsiveWidget.isSmallScreen(context) ? 0 : 2, child: Container()),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: defaultPadding * 2.5),
                  child: Text(
                    '$resume',
                    textAlign: TextAlign.center,
                    textScaleFactor: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colorWhite,
                    ),
                  ),
                ),
                SizedBox(height: defaultPadding * 2.5),
                ResponsiveWidget(
                  largeScreen: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: WorkExperienceWidget()),
                          SizedBox(width: defaultPadding),
                          Expanded(child: EducationWidget()),
                        ],
                      ),
                      SizedBox(height: defaultPadding * 2.5),
                      Row(
                        children: [
                          Expanded(child: SkillsWidget()),
                          SizedBox(width: defaultPadding),
                        ],
                      )
                    ],
                  ),
                  mediumScreen: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: WorkExperienceWidget()),
                          SizedBox(width: defaultPadding),
                          Expanded(child: EducationWidget()),
                        ],
                      ),
                      SizedBox(height: defaultPadding * 2.5),
                      Row(
                        children: [
                          Expanded(child: SkillsWidget()),
                          SizedBox(width: defaultPadding),
                        ],
                      )
                    ],
                  ),
                  smallScreen: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WorkExperienceWidget(),
                      SizedBox(height: defaultPadding * 2.5),
                      EducationWidget(),
                      SizedBox(height: defaultPadding * 2.5),
                      SkillsWidget()
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(flex: ResponsiveWidget.isSmallScreen(context) ? 0 : 2, child: Container()),
        ],
      ),
    );
  }
}
