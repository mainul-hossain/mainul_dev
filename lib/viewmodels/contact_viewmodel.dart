import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mainul_dev/utils/colors.dart';

class ContactViewModel extends GetxController {
  final firestoreInstance = FirebaseFirestore.instance;

  RxString fullName = ''.obs;
  RxString email = ''.obs;
  RxString message = ''.obs;
  RxString errorNameText = RxString(null);
  RxString errorEmailText = RxString(null);
  RxString errorMessageText = RxString(null);

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void onFullNameChanged(String value) {
    fullName.value = value;
  }

  void onEmailChanged(String value) {
    email.value = value;
  }

  void onMessageChanged(String value) {
    message.value = value;
  }

  bool validations() {
    bool isValid = true;
    if (fullName.value.trim().isEmpty) {
      errorNameText.value = 'Enter Your Full Name';
      isValid = false;
    }
    if (email.value.trim().isEmpty) {
      errorEmailText.value = 'Enter Your Email';
      isValid = false;
    }
    if (message.value.trim().isEmpty) {
      errorMessageText.value = 'Write Your Message';
      isValid = false;
    }
    return isValid;
  }

  Future<bool> onSubmitMessage() async {
    if (validations()) {
      await firestoreInstance.collection('message').add({
        'name': fullName.value,
        'email': email.value,
        'message': message.value,
      }).then((value) {
        Get.snackbar('Success!', 'Thanks for submitting your response',
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: colorGreen,
            duration: Duration(milliseconds: 900),
            borderRadius: 0,
            margin: EdgeInsets.all(0));
        clearForm();
        return true;
      }).catchError((error) {
        print("Failed to send message: $error");
        return false;
      });
    }
    return false;
  }

  void clearForm() {
    fullName.value = '';
    email.value = '';
    message.value = '';
    nameController.clear();
    emailController.clear();
    messageController.clear();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
