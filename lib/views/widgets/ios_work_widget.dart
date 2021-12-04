import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainul_dev/common/app_link_widget.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/strings.dart';
import 'package:mainul_dev/viewmodels/home_viewmodel.dart';

class IOSWork extends StatelessWidget {
  const IOSWork({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeViewModel = Get.find<HomeViewModel>();

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
        Obx(
          () {
            final iOSProjects =
                homeViewModel.portfolioData.value?.projects?.where((element) => element.platform == 'ios').toList();
            return ListView.builder(
              itemCount: iOSProjects?.length ?? 0,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final project = iOSProjects?[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: defaultPadding * 2.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLinkWidget(
                        appName: project?.appName ?? '',
                        appLink: project?.appLink ?? '',
                      ),
                      SizedBox(height: defaultPadding),
                      Text(
                        project?.appDesc ?? '',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: colorWhite,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
