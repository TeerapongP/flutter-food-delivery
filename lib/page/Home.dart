import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'MainPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [
    const MainPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        iconSize: 24,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me),
            label: 'Near By',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            // ignore: deprecated_member_use
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }
}
// BottomNavigationBar(
//       currentIndex: _currentIndex,
//       type: BottomNavigationBarType.fixed,
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.near_me),
//           label: 'Near By',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.card_giftcard),
//           label: 'Cart',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(FontAwesomeIcons.user),
//           // ignore: deprecated_member_use
//           label: 'Account',
//         ),
//       ],
//       onTap: (index) {
//         setState(
//           () {
//             _currentIndex = index;
//           },
//         );
//       },
//     );