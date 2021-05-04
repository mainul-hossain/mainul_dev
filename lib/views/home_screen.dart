import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/viewmodels/home_viewmodel.dart';
import 'package:mainul_dev/views/contact_screen.dart';
import 'package:mainul_dev/views/nav_header.dart';
import 'package:mainul_dev/views/profile_info.dart';
import 'package:mainul_dev/views/resume_screen.dart';
import 'package:mainul_dev/views/works_screen.dart';
import 'package:mainul_dev/widgets/responsive_widget.dart';

class HomeScreen extends StatelessWidget {
  final homeViewModel = Get.put(HomeViewModel());
  final worksKey = GlobalKey();
  final resumeKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: colorScaffoldDark,
        extendBodyBehindAppBar: true,
        // appBar: PreferredSize(
        //   preferredSize: Size(screenSize.width, 1000),
        //   child: Container(
        //     child: Padding(
        //       padding: EdgeInsets.all(defaultPadding * 2),
        //       child: Container(
        //         constraints: BoxConstraints(minWidth: screenSize.width),
        //         child: Row(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(left: defaultPadding * 2),
        //               child: Container(
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(24),
        //                   border: Border.all(color: colorLightGrey, width: 1),
        //                 ),
        //                 child: Padding(
        //                   padding: const EdgeInsets.all(8.0),
        //                   child: Icon(
        //                     Icons.email_outlined,
        //                     color: colorWhite,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             SizedBox(width: defaultPadding),
        //             SelectableText(
        //               email,
        //               style: TextStyle(
        //                   fontWeight: FontWeight.normal,
        //                   color: colorWhite,
        //                   fontSize: fontSizeMedium),
        //             ),
        //             Flexible(
        //               child: ResponsiveWidget.isLargeScreen(context)
        //                   ? Row(
        //                       mainAxisAlignment: MainAxisAlignment.end,
        //                       children: [
        //                         TextButton(
        //                           onPressed: () {
        //                             // Get.to(WorksScreen());
        //                             Scrollable.ensureVisible(
        //                                 worksKey.currentContext);
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: defaultPadding * 2),
        //                             child: Text(
        //                               'Works',
        //                               style: TextStyle(
        //                                 fontWeight: FontWeight.bold,
        //                                 color: colorLightGrey,
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                         // Spacer(),
        //                         TextButton(
        //                           onPressed: () {
        //                             // Get.to(ResumeScreen());
        //                             Scrollable.ensureVisible(
        //                                 resumeKey.currentContext);
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: defaultPadding * 2),
        //                             child: Text(
        //                               'Resume',
        //                               style: TextStyle(
        //                                 fontWeight: FontWeight.bold,
        //                                 color: colorLightGrey,
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                         // Spacer(),
        //                         TextButton(
        //                           onPressed: () {
        //                             // Get.to(ContactScreen());
        //                             Scrollable.ensureVisible(
        //                                 contactKey.currentContext);
        //                           },
        //                           child: Padding(
        //                             padding: const EdgeInsets.symmetric(
        //                                 horizontal: defaultPadding * 2),
        //                             child: Text(
        //                               'Contact',
        //                               style: TextStyle(
        //                                 fontWeight: FontWeight.bold,
        //                                 color: colorLightGrey,
        //                               ),
        //                             ),
        //                           ),
        //                         ),
        //                       ],
        //                     )
        //                   : Row(
        //                       mainAxisAlignment: MainAxisAlignment.end,
        //                       children: [
        //                         IconButton(
        //                           icon: Icon(
        //                             Icons.menu,
        //                             color: colorWhite,
        //                           ),
        //                           onPressed: () {},
        //                         )
        //                       ],
        //                     ),
        //             )
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // drawer: ResponsiveWidget.isSmallScreen(context)
        //     ? Drawer(
        //         child: ListView(
        //           padding: const EdgeInsets.all(20),
        //           children: [
        //             TextButton(
        //               onPressed: () {
        //                 // Get.to(WorksScreen());
        //                 Scrollable.ensureVisible(worksKey.currentContext);
        //               },
        //               child: Padding(
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: defaultPadding * 2),
        //                 child: Text(
        //                   'Works',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     color: colorLightGrey,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             // Spacer(),
        //             TextButton(
        //               onPressed: () {
        //                 // Get.to(ResumeScreen());
        //                 Scrollable.ensureVisible(resumeKey.currentContext);
        //               },
        //               child: Padding(
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: defaultPadding * 2),
        //                 child: Text(
        //                   'Resume',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     color: colorLightGrey,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //             // Spacer(),
        //             TextButton(
        //               onPressed: () {
        //                 // Get.to(ContactScreen());
        //                 Scrollable.ensureVisible(contactKey.currentContext);
        //               },
        //               child: Padding(
        //                 padding: const EdgeInsets.symmetric(
        //                     horizontal: defaultPadding * 2),
        //                 child: Text(
        //                   'Contact',
        //                   style: TextStyle(
        //                     fontWeight: FontWeight.bold,
        //                     color: colorLightGrey,
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       )
        //     : null,
        floatingActionButton: Visibility(
          visible: true,
          child: FloatingActionButton(
            child: Icon(Icons.arrow_upward, size: 18),
            mini: true,
            elevation: 8,
            onPressed: () {
              homeViewModel.scrollController?.animateTo(0,
                  duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
            },
          ),
        ),
        body: SingleChildScrollView(
          controller: homeViewModel.scrollController,
          child: AnimatedPadding(
            duration: Duration(seconds: 1),
            padding: EdgeInsets.symmetric(
                horizontal: defaultPadding * 3, vertical: defaultPadding * 2.5),
            child: Column(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(minHeight: screenSize.height),
                  child: Column(
                    children: [
                      NavHeader(
                        key,
                        onWorksPressed: () {
                          Scrollable.ensureVisible(worksKey.currentContext,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
                        },
                        onResumePressed: () {
                          Scrollable.ensureVisible(resumeKey.currentContext,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
                        },
                        onContactPressed: () {
                          Scrollable.ensureVisible(contactKey.currentContext,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn);
                        },
                      ),
                      SizedBox(height: defaultPadding * 2.5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ProfileInfo(screenSize: screenSize),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: defaultPadding),
                ResumeScreen(resumeKey, screenSize: screenSize),
                SizedBox(height: defaultPadding),
                WorksScreen(worksKey, screenSize: screenSize),
                SizedBox(height: defaultPadding),
                ContactScreen(contactKey, screenSize: screenSize),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
