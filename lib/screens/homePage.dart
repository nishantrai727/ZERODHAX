import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'apps.dart';
import 'firstPage.dart';
import 'orders.dart';
import 'portfolio.dart';
import 'profile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = [
    FirstPage(),
    Orders(),
    Portfolio(),
    Apps(),
    Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          elevation: 15,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border),
              label: "Watchlist",
            ),
            BottomNavigationBarItem(
              icon: Icon(Feather.book),
              label: "Orders",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesome.suitcase),
              label: "Portfolio",
            ),
            BottomNavigationBarItem(
              icon: Icon(MaterialCommunityIcons.cube_outline),
              label: "Apps",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
        body: Container(
          color: Color(0xFFEEEEEE),
          child: Column(
            children: [
              Expanded(
                child: _widgetOptions[_selectedIndex],
              )
            ],
          ),
        ),
      ),
    );
  }
}
