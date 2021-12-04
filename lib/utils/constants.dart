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
