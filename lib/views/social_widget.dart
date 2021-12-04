import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/images.dart';

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
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: linkedInColor),
          child: IconButton(
            icon: SvgPicture.asset(
              '$ic_linked_in',
              color: colorWhite,
              width: 48,
              height: 48,
            ),
            onPressed: () {
              launchUrl(linkedInUrl);
            },
          ),
        ),
        SizedBox(width: defaultPadding),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: colorWhite),
          child: IconButton(
            icon: SvgPicture.asset(
              '$ic_github',
              color: colorBlack,
              width: 48,
              height: 48,
            ),
            onPressed: () {
              launchUrl(githubUrl);
            },
          ),
        ),
        SizedBox(width: defaultPadding),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: facebookColor),
          child: IconButton(
            icon: SvgPicture.asset(
              '$ic_facebook',
              color: colorWhite,
              width: 48,
              height: 48,
            ),
            onPressed: () {
              launchUrl(facebookUrl);
            },
          ),
        ),
        SizedBox(width: defaultPadding),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: twitterColor),
          child: IconButton(
            icon: SvgPicture.asset(
              '$ic_twitter',
              color: colorWhite,
              width: 48,
              height: 48,
            ),
            onPressed: () {
              launchUrl(twitterUrl);
            },
          ),
        ),
        SizedBox(width: defaultPadding),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: instagramColor),
          child: IconButton(
            icon: SvgPicture.asset(
              '$ic_instagram',
              color: colorWhite,
              width: 48,
              height: 48,
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
