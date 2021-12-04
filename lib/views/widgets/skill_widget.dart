import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/strings.dart';
import 'package:mainul_dev/viewmodels/home_viewmodel.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Get.find<HomeViewModel>();
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
        Obx(
          () => Text(
            '${homeViewModel.portfolioData.value?.skills?.developmentArea}',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: colorWhite,
            ),
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
        Obx(
          () => Text(
            '${homeViewModel.portfolioData.value?.skills?.languages}',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: colorWhite,
            ),
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
        Obx(
          () => Text(
            '${homeViewModel.portfolioData.value?.skills?.tools}',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: colorWhite,
            ),
          ),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
