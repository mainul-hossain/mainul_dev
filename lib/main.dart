import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mainul_dev/utils/colors.dart';
import 'package:mainul_dev/utils/strings.dart';
import 'package:mainul_dev/views/pages/home_screen.dart';
import 'package:url_strategy/url_strategy.dart';

bool USE_FIRESTORE_EMULATOR = false;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCB8UYRpGMcmQn6_OpH3oNx83U6EqmTbkU',
        appId: '1:68320151825:web:103ff2c3d37a82ae44a4b0',
        messagingSenderId: '68320151825',
        projectId: 'mainul-dev',
      ),
    );
  } on FirebaseException catch (e) {
    if (e.code == 'duplicate-app') {
      await Firebase.initializeApp();
    }
  }

  // Switch host based on platform.
  String host = 'localhost:8080';

  if (USE_FIRESTORE_EMULATOR) {
    FirebaseFirestore.instance.settings = Settings(host: host, sslEnabled: false, persistenceEnabled: false);
  }
  setPathUrlStrategy();
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '$profile_name',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: colorGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.robotoTextTheme().apply(displayColor: colorWhite),
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          brightness: Brightness.light,
        ),
      ),
      home: HomeScreen(),
    );
  }
}
