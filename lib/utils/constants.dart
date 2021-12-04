import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Padding & Margin
const defaultPadding = 16.0;
const defaultListPadding = 8.0;
const defaultSpace = 16.0;
const defaultMargin = 16.0;
const defaultBorderRadius = 2.0;
const defaultBorderWidth = 0.7;

/// Font Size
const fontSizeXSmall = 10.0;
const fontSizeSmall = 12.0;
const fontSizeNormal = 14.0;
const fontSizeMedium = 16.0;
const fontSizeXMedium = 18.0;
const fontSizeLarge = 24.0;
const fontSizeXLarge = 30.0;

const bool isProduction = bool.fromEnvironment('dart.vm.product');

const String facebookUrl = 'https://www.facebook.com/mainul.me';
const String twitterUrl = 'https://twitter.com/mainul_me';
const String githubUrl = 'https://github.com/mainul-hossain';
const String instagramUrl = 'https://www.instagram.com/mainul.me/';
const String linkedInUrl = 'https://www.linkedin.com/in/mainul-hossain/';
const String email = 'mainul.devs@gmail.com';

// App link
const String atlasPrimerAndroid = 'https://play.google.com/store/apps/details?id=com.atlasprimer&hl=en&gl=US';
const String atlasPrimerIOS = 'https://apps.apple.com/us/app/atlas-primer/id1561918890';
const String meenaClickAndroid = 'https://play.google.com/store/apps/details?id=com.meenaclick.customer';
const String meenaClickIOS = 'https://apps.apple.com/us/app/meenaclick/id1541513673';
const String meenaWholesaleAndroid = 'https://play.google.com/store/apps/details?id=com.meenaclick.wholesale';
const String meenaWholesaleIOS = 'https://apps.apple.com/us/app/meena-wholesale/id1595539663';
const String portApp = 'https://play.google.com/store/apps/details?id=com.theportapp.remotetravel';
const String drosUAE = 'https://play.google.com/store/apps/details?id=ae.drosuae.mobileapp';
const String krazyBazaarAndroid = 'https://play.google.com/store/apps/details?id=com.krazyit.krazybazaar';
const String krazyBazaarVendor = 'https://play.google.com/store/apps/details?id=com.krazyit.krazybazaarvendor';
const String krazyBazaarPOS = 'https://play.google.com/store/apps/details?id=com.krazyit.krazybazaarpos';
const String krazyBazaarIOS = 'https://apps.apple.com/sg/app/krazy-bazaar/id1502917996';
const String krazyTicket = 'https://play.google.com/store/apps/details?id=com.krazyit.krazytickets';
const String gradeAndroid = 'https://play.google.com/store/apps/details?id=fr.grade.grade&hl=fr';

launchUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

enum DrawerMenu {
  Works,
  Resume,
  Contact,
}

extension DrawerMenuExtention on DrawerMenu {
  static const names = {
    DrawerMenu.Works: 'Works',
    DrawerMenu.Resume: 'Resume',
    DrawerMenu.Contact: 'Contact',
  };
  get name => names[this];
}
