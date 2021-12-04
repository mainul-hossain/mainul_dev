import 'package:flutter/material.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/utils/strings.dart';
import 'package:mainul_dev/widgets/responsive_widget.dart';

class NavHeader extends StatelessWidget {
  final Function onWorksPressed;
  final Function onResumePressed;
  final Function onContactPressed;

  const NavHeader(Key key, {this.onWorksPressed, this.onResumePressed, this.onContactPressed}) : super(key: key);

  void handleClick(DrawerMenu value) {
    switch (value) {
      case DrawerMenu.Works:
        onWorksPressed();
        break;
      case DrawerMenu.Resume:
        onResumePressed();
        break;
      case DrawerMenu.Contact:
        onContactPressed();
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: colorLightGrey, width: 1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.email_outlined,
              color: colorWhite,
            ),
          ),
        ),
        SizedBox(width: defaultPadding),
        SelectableText(
          email,
          style: TextStyle(fontWeight: FontWeight.normal, color: colorWhite, fontSize: fontSizeMedium),
        ),
        Flexible(
          child: ResponsiveWidget.isLargeScreen(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: onResumePressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: Text(
                          '$resume',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorLightGrey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: defaultPadding),
                    TextButton(
                      onPressed: onWorksPressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: Text(
                          '$works',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorLightGrey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: defaultPadding),
                    TextButton(
                      onPressed: onContactPressed,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                        child: Text(
                          '$contact',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorLightGrey,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    PopupMenuButton<DrawerMenu>(
                      icon: Icon(
                        Icons.menu,
                        color: colorWhite,
                      ),
                      color: colorCardDark,
                      onSelected: handleClick,
                      itemBuilder: (BuildContext context) {
                        return {DrawerMenu.Resume, DrawerMenu.Works, DrawerMenu.Contact}.map((DrawerMenu choice) {
                          return PopupMenuItem<DrawerMenu>(
                            value: choice,
                            child: Text(
                              choice.name,
                              style: TextStyle(
                                color: colorLightGrey,
                              ),
                            ),
                          );
                        }).toList();
                      },
                    )
                  ],
                ),
        ),
      ],
    );
  }
}
