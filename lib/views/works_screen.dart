import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/strings.dart';
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
          Expanded(flex: ResponsiveWidget.isSmallScreen(context) ? 0 : 2, child: Container()),
        ],
      ),
    );
  }

  Column buildAndroidWork() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$android',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        AppLinkWidget(
          appName: '$atlas_primer',
          appLink: atlasPrimerAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$atlas_primer_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$meena_click',
          appLink: meenaClickAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$meena_click_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$meena_wholesale',
          appLink: meenaWholesaleAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$meena_wholesale_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$mc_rider',
          appLink: meenaClickAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$mc_rider_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$port',
          appLink: portApp,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$port_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$dros_uae',
          appLink: drosUAE,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$dros_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$krazy_bazaar',
          appLink: krazyBazaarAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$krazy_bazaar_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$kb_vendor',
          appLink: krazyBazaarVendor,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$kb_vendor_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$kb_pos',
          appLink: krazyBazaarPOS,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$kb_pos_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$krazy_tickets',
          appLink: krazyTicket,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$krazy_tickets_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$grade',
          appLink: gradeAndroid,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$grade_desc',
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
          '$ios',
          textAlign: TextAlign.center,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        AppLinkWidget(
          appName: '$atlas_primer',
          appLink: atlasPrimerIOS,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$atlas_primer_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$meena_click',
          appLink: meenaClickIOS,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$meena_click_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$meena_wholesale',
          appLink: meenaWholesaleIOS,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$meena_wholesale_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2.5),
        AppLinkWidget(
          appName: '$krazy_bazaar',
          appLink: krazyBazaarIOS,
        ),
        SizedBox(height: defaultPadding),
        Text(
          '$krazy_bazaar_desc',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: colorWhite,
          ),
        ),
      ],
    );
  }
}
