import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';

class SocialWidget extends StatelessWidget {
  const SocialWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: linkedInColor),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/linkedin.svg',
              color: colorWhite,
            ),
            onPressed: () {
              launchUrl(linkedInUrl);
            },
          ),
        ),
        SizedBox(width: defaultPadding),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: colorWhite),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/github.svg',
              color: colorBlack,
            ),
            onPressed: () {
              launchUrl(githubUrl);
            },
          ),
        ),
        SizedBox(width: defaultPadding),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: facebookColor),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/facebook.svg',
              color: colorWhite,
            ),
            onPressed: () {
              launchUrl(facebookUrl);
            },
          ),
        ),
        SizedBox(width: defaultPadding),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: twitterColor),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/twitter.svg',
              color: colorWhite,
            ),
            onPressed: () {
              launchUrl(twitterUrl);
            },
          ),
        ),
        SizedBox(width: defaultPadding),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: instagramColor),
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/instagram.svg',
              color: colorWhite,
            ),
            onPressed: () {
              launchUrl(instagramUrl);
            },
          ),
        ),
      ],
    );
  }
}
