import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/constants.dart';
import 'package:mainul_dev/viewmodels/contact_viewmodel.dart';
import 'package:mainul_dev/widgets/responsive_widget.dart';
import 'package:mainul_dev/widgets/text_form_field.dart';

class ContactScreen extends StatelessWidget {
  final Size screenSize;
  ContactScreen(Key key, {this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContactViewModel contactViewModel = Get.put(ContactViewModel());

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: screenSize.height),
      child: Row(
        children: [
          Expanded(
              flex: ResponsiveWidget.isSmallScreen(context) ? 0 : 2,
              child: Container()),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: ResponsiveWidget.isSmallScreen(context) ? 6 : 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: defaultPadding * 2.5),
                        child: Text(
                          'Contact',
                          textAlign: TextAlign.start,
                          textScaleFactor: 2,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorWhite,
                          ),
                        ),
                      ),
                      SizedBox(height: defaultPadding * 2.5),
                      Obx(
                        () => EditText(
                          controller: contactViewModel.nameController,
                          labelText: 'Full Name',
                          type: TextInputType.name,
                          obscureText: false,
                          onChanged: contactViewModel.onFullNameChanged,
                          errorText: contactViewModel.errorNameText.value,
                          isDarkTheme: true,
                        ),
                      ),
                      SizedBox(height: defaultPadding * 2),
                      Obx(
                        () => EditText(
                          controller: contactViewModel.emailController,
                          labelText: 'Email',
                          type: TextInputType.text,
                          obscureText: false,
                          onChanged: contactViewModel.onEmailChanged,
                          errorText: contactViewModel.errorEmailText.value,
                          isDarkTheme: true,
                        ),
                      ),
                      SizedBox(height: defaultPadding * 2),
                      Obx(
                        () => TextFormField(
                          controller: contactViewModel.messageController,
                          autofocus: false,
                          style: TextStyle(color: colorWhite),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: defaultPadding,
                                horizontal: defaultPadding),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(defaultBorderRadius)),
                              borderSide: BorderSide(
                                  width: defaultBorderWidth,
                                  color: accentColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(defaultBorderRadius)),
                              borderSide: BorderSide(
                                  width: defaultBorderWidth,
                                  color: colorGrey.withOpacity(0.4)),
                            ),
                            hintText: 'Write Something...',
                            hintStyle: TextStyle(
                                fontSize: fontSizeNormal,
                                color: textColorDark.withOpacity(0.8)),
                            counterStyle: TextStyle(
                                color: colorLightGrey.withOpacity(0.4)),
                            errorText: contactViewModel.errorMessageText.value,
                          ),
                          minLines: 4,
                          maxLines: 5,
                          maxLength: 100,
                          onChanged: contactViewModel.onMessageChanged,
                        ),
                      ),
                      SizedBox(height: defaultPadding),
                      ElevatedButton(
                        onPressed: () async {
                          var response =
                              await contactViewModel.onSubmitMessage();
                          if (response) {}
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding * 0.8),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: colorLightGrey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ResponsiveWidget.isSmallScreen(context)
                    ? SizedBox()
                    : Expanded(child: Container()),
              ],
            ),
          ),
          Expanded(
              flex: ResponsiveWidget.isSmallScreen(context) ? 0 : 2,
              child: Container()),
        ],
      ),
    );
  }
}
