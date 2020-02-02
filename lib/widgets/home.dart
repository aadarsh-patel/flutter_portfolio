import 'package:flutter/material.dart';

import 'grid_list.dart';
import 'profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.75,
      child: Row(
        children: <Widget>[
          ShadyProfile(),
          ShadyGridList(),
        ],
      ),
    );
  }
}
