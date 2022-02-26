import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
//        navigateToScreens(index);
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          // ignore: deprecated_member_use
          title: Text(
            'Home',
            style: TextStyle(color: Color(0xFF000000)),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.near_me),
          // ignore: deprecated_member_use
          title: Text(
            'Near By',
            style: TextStyle(color: Color(0xFF000000)),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          // ignore: deprecated_member_use
          title: Text(
            'Cart',
            style: TextStyle(color: Color(0xFF000000)),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          // ignore: deprecated_member_use
          title: Text(
            'Account',
            style: TextStyle(color: Color(0xFF000000)),
          ),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFF55C5D1),
      onTap: _onItemTapped,
    );
  }
}
