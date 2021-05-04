import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math' as math;
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/widgets/app_link_widget.dart';
import 'package:mainul_dev/widgets/responsive_widget.dart';

class WorksScreen extends StatelessWidget {
  final Size screenSize;
  const WorksScreen(Key key, {this.screenSize}) : super(key: key);

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
                    'Works',
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
                          Expanded(child: buildAndroidWork()),
                          SizedBox(width: defaultPadding),
                          Expanded(child: buildIOSWork()),
                        ],
                      ),
                    ],
                  ),
                  smallScreen: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildAndroidWork(),
                      SizedBox(height: defaultPadding * 2.5),
                      buildIOSWork(),
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

  Column buildAndroidWork() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Android',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        AppLinkWidget(
          appName: 'MeenaClick',
          appLink: meenaClickAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'MeenaClick is a cornerstone of Bangladesh’s thriving e-commerce sector, building upon the capabilities and reputation of Meena Bazar, one of the largest retail chains in the country.',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: 'Port - Remote Travel',
          appLink: portApp,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Port lets you roam the world from home.',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: 'DROSUAE',
          appLink: drosUAE,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'DROSUAE contains thousands of syllables, scientific lessons, speeches and lectures for the finest of the great sheikhs in the United Arab Emirates',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: 'Krazy Bazaar',
          appLink: krazyBazaarAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Krazy Bazaar - Australia\'s largest sub-continental marketplace.',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: 'Krazy Bazaar Vendor',
          appLink: krazyBazaarVendor,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Krazy Bazaar - Australia\'s largest sub-continental marketplace.',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: 'Krazy Bazaar POS',
          appLink: krazyBazaarPOS,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Krazy Bazaar - Australia\'s largest sub-continental marketplace.',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: 'Krazy Tickets',
          appLink: krazyTicket,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Krazy Tickets is an event\'s ticketing platform and it, helps hosts to sell tickets of any types of events.',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: 'Grade - Restaurant',
          appLink: gradeAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Grade référence les lieux dans lesquels on peut se restaurer (fast food, restaurant , salon de the etc ...)',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
      ],
    );
  }

  Column buildIOSWork() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'iOS',
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        AppLinkWidget(
          appName: 'MeenaClick',
          appLink: meenaClickIOS,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'MeenaClick is a cornerstone of Bangladesh’s thriving e-commerce sector, building upon the capabilities and reputation of Meena Bazar, one of the largest retail chains in the country.',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: 'Krazy Bazaar',
          appLink: krazyBazaarIOS,
        ),
        SizedBox(height: defaultPadding),
        Text(
          'Krazy Bazaar - Australia\'s largest sub-continental marketplace.',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
      ],
    );
  }
}
