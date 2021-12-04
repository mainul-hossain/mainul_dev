import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mainul_dev/data/portfolio_data.dart';

class HomeViewModel extends GetxController {
  final scrollController = ScrollController();
  var portfolioData = Rxn<PortfolioData>();

  @override
  void onInit() async {
    final loader = document.getElementsByClassName('loading');
    await _readJson();
    if (loader.isNotEmpty) {
      loader.first.remove();
    }
    super.onInit();
  }

  Future<void> _readJson() async {
    final String response = await rootBundle.loadString('assets/data.json');
    portfolioData.value = PortfolioData.fromJson(json.decode(response));
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
