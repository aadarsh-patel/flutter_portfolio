import 'package:flutter/material.dart';
import 'dart:ui';

import 'wrap_list.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        child: BackdropFilter(
      filter: new ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0), //Original value sigmaX: 10.0, sigmaY: 10.0
      child: Column(
          children: <Widget>[
            ShadyProfile(),
            ShadyWrapList(),
          ],
        ),
      ),
      ),
    );
  }
}
