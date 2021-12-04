import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/strings.dart';
import 'package:mainul_dev/viewmodels/home_viewmodel.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Get.find<HomeViewModel>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '$education',
          textAlign: TextAlign.start,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: colorWhite,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
        Obx(
          () => ListView.builder(
            itemCount: homeViewModel.portfolioData.value?.educations?.length ?? 0,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final education = homeViewModel.portfolioData.value?.educations?[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: defaultPadding * 2.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${education?.institution ?? ''}',
                      textAlign: TextAlign.start,
                      textScaleFactor: 1.2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: colorWhite,
                      ),
                    ),
                    SizedBox(height: defaultPadding),
                    Text(
                      '${education?.degree ?? ''}',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: colorWhite,
                      ),
                    ),
                    SizedBox(height: defaultPadding * 0.5),
                    Text(
                      '${education?.duration ?? ''}',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: lightTextColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
