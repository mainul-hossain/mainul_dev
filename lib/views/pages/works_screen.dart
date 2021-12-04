import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainul_dev/common/app_link_widget.dart';
import 'package:mainul_dev/common/responsive_widget.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/strings.dart';
import 'package:mainul_dev/viewmodels/home_viewmodel.dart';
import 'package:mainul_dev/views/widgets/android_work_widget.dart';
import 'package:mainul_dev/views/widgets/ios_work_widget.dart';

class WorksScreen extends StatelessWidget {
  final Size screenSize;
  const WorksScreen(Key key, {required this.screenSize}) : super(key: key);

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
                    '$works',
                    textAlign: TextAlign.start,
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
                          Expanded(child: AndroidWork()),
                          SizedBox(width: defaultPadding),
                          Expanded(child: IOSWork()),
                        ],
                      ),
                    ],
                  ),
                  mediumScreen: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: AndroidWork()),
                          SizedBox(width: defaultPadding),
                          Expanded(child: IOSWork()),
                        ],
                      ),
                    ],
                  ),
                  smallScreen: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AndroidWork(),
                      SizedBox(height: defaultPadding * 2.5),
                      IOSWork(),
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
