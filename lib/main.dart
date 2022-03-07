import 'package:delivery/page/Home.dart';
import 'package:delivery/page/signInPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Roboto-Regular.ttf',
        ),
        // ignore: prefer_const_constructors
        home: SignInPage_Firebase(),
      ),
    );
