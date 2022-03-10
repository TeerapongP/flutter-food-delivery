// @dart=2.9

import 'package:delivery/page/FoodDetailsPage.dart';
import 'package:delivery/page/MainPage.dart';

import 'page/signInPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Roboto-Regular.ttf',
    ),
    // ignore: prefer_const_constructors
    home: MainPage(),
    // home: SignInPage_Firebase(),
  ));
}
