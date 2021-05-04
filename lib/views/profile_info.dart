import 'package:flutter/material.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/widgets/responsive_widget.dart';
import 'package:mainul_dev/views/social_widget.dart';

class ProfileInfo extends StatelessWidget {
  final Size screenSize;
  const ProfileInfo({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: defaultPadding),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          width: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.height * 0.25
              : screenSize.width * 0.25,
          height: ResponsiveWidget.isSmallScreen(context)
              ? screenSize.height * 0.25
              : screenSize.width * 0.25,
          decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.luminosity,
            color: colorScaffoldDark,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/profile_image.webp'),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Text(
          'Mainul Hossain',
          textAlign: TextAlign.center,
          textScaleFactor: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Mobile Application Developer',
          textAlign: TextAlign.center,
          textScaleFactor: 2.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        SocialWidget(),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
