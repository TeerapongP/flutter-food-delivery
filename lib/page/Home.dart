import 'package:flutter/material.dart';
import '../animetions/ScaleRoute.dart';
import '../widgets/BottomNavBarWidget.dart';
import './signInPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
        title: const Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.notifications_none,
                color: Color(0xff000000),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  ScaleRoute(
                    page: const SignInPage(),
                  ),
                );
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
