import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  final scrollController = ScrollController();

  @override
  void onInit() {
    final loader = document.getElementsByClassName('loading');
    if (loader.isNotEmpty) {
      loader.first.remove();
    }
    super.onInit();
  }

  @override
  void dispose() {
    scrollController?.dispose();
    super.dispose();
  }
}
