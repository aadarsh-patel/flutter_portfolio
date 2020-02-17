import 'package:flutter/material.dart';
import 'dart:ui';

import 'wrap_list.dart';
import 'profile.dart';
import 'form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    ShadyProfile(),
    ShadyWrapList(),
    ShadyForm(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Scrollbar(
        child: SingleChildScrollView(
          child: BackdropFilter(
            filter: new ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0), //Original value sigmaX: 10.0, sigmaY: 10.0
            child: Center(
              child: tabWidgets.elementAt(_selectedIndex),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            title: Text('About'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Contact me'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Contact me'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}