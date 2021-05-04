import 'package:flutter/material.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/widgets/responsive_widget.dart';

class ResumeScreen extends StatelessWidget {
  final Size screenSize;
  const ResumeScreen(Key key, {this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: screenSize.height),
      child: Row(
        children: [
          Expanded(
              flex: ResponsiveWidget.isSmallScreen(context) ? 0 : 2,
              child: Container()),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: defaultPadding * 2.5),
                  child: Text(
                    'Resume',
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
                          Expanded(child: buildWorkExperience()),
                          SizedBox(width: defaultPadding),
                          Expanded(child: buildEducation()),
                        ],
                      ),
                      SizedBox(height: defaultPadding * 2.5),
                      Row(
                        children: [
                          Expanded(child: buildSkills()),
                          SizedBox(width: defaultPadding),
                        ],
                      )
                    ],
                  ),
                  smallScreen: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildWorkExperience(),
                      SizedBox(height: defaultPadding * 2.5),
                      buildEducation(),
                      SizedBox(height: defaultPadding * 2.5),
                      buildSkills()
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              flex: ResponsiveWidget.isSmallScreen(context) ? 0 : 2,
              child: Container()),
        ],
      ),
    );
  }

  Column buildWorkExperience() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Work Experience',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          'MeenaClick (Gemcon Group)',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Mobile Application Developer',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
        Text(
          'July 2020 - Current',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: lightTextColor,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        Text(
          'Krazy IT',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Android & iOS Developer',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
        Text(
          'February 2018 - July 2020',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: lightTextColor,
          ),
        ),
      ],
    );
  }

  Column buildEducation() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Education',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          'Jahangirnagar University',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          'MSc • Computer Science',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
        Text(
          '2018 - 2019',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: lightTextColor,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        Text(
          'Northern University Bangladesh',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          'BSc • Computer Science & Engineering',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
        Text(
          '2013 - 2016',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: lightTextColor,
          ),
        ),
      ],
    );
  }

  Column buildSkills() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skills',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          'Development',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Android, iOS & Flutter',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        Text(
          'Programming Languages',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Java, Kotlin, Swift, Dart, C#, C++, C, PHP, JavaScript',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        Text(
          'Tools',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Xcode, Android Studio, NetBeans, Visual Studio, Eclipse IDE, Trello, Jira, Slack, Git',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
