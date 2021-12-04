import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';

class AppLinkWidget extends StatelessWidget {
  final String appName;
  final String appLink;

  const AppLinkWidget({
    Key? key,
    required this.appName,
    required this.appLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          launchUrl(appLink);
        },
        child: Row(
          children: [
            Text(
              appName,
              textAlign: TextAlign.start,
              textScaleFactor: 1.2,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: colorWhite,
              ),
            ),
            SizedBox(width: 8),
            Transform.rotate(
              angle: -45 * math.pi / 180,
              child: Icon(
                Icons.arrow_forward,
                color: colorWhite,
                size: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
