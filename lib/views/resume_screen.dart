import 'package:flutter/material.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/strings.dart';
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
          Expanded(flex: ResponsiveWidget.isSmallScreen(context) ? 0 : 2, child: Container()),
        ],
      ),
    );
  }

  Column buildWorkExperience() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$work_experience',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          '$com_meena_click',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$meena_click_position',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
        Text(
          '$meena_click_duration',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: lightTextColor,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        Text(
          '$com_kray_it',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$krazy_it_position',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
        Text(
          '$krazy_it_duration',
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
          '$education',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          '$ms_institution',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$ms_major',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
        Text(
          '$ms_duration',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: lightTextColor,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        Text(
          '$bs_institution',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$bs_major',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 0.5),
        Text(
          '$bs_duration',
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
          '$skills',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          '$development',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$development_area',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        Text(
          '$programming_languages',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$languages_name',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        Text(
          '$tools',
          textAlign: TextAlign.start,
          textScaleFactor: 1.2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$tools_name',
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
