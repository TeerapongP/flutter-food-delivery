import 'package:flutter/material.dart';
import './page/Home.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Roboto-Regular.ttf',
        ),
        // ignore: prefer_const_constructors
        home: HomePage(),
      ),
    );
