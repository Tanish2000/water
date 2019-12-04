import 'package:flutter/material.dart';

import 'package:water/Screens/Dashboard.dart';

import 'package:water/Screens/Cart.dart';
import 'package:water/Screens/Profile.dart';





class bottomNavigationBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarState();
  }
}

class _BottomNavigationBarState extends State<bottomNavigationBar > {
  int _selectedPage = 0;
  final _pageOptions = [
    Dashboard(),
    Cart(),
    Profile()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,

        onTap: (int index){
          setState(() {
            _selectedPage = index;
          });
        },

        items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.dashboard),title: Text("Dashboard")
      ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),title: Text("Your Cart")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),title: Text("Profile")
          ),

        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}