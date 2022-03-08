// ignore: file_names
import 'package:flutter/material.dart';
import '../widgets/BottomNavBarWidget.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/TopMenus.dart';
import '../widgets/PopularFoodsWidget.dart';
import '../widgets/BestFoodWidget.dart';

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
              onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
