import 'package:flutter/material.dart';
import 'dart:ui';

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
    ShadyForm(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BackdropFilter(
        filter: new ImageFilter.blur(
          //Standard value sigmaX: 10.0, sigmaY: 10.0
          sigmaX: 5.5,
          sigmaY: 5.5,
        ),
        child: Scrollbar(
          child: SingleChildScrollView(
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
            title: Text('Profile'),
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
