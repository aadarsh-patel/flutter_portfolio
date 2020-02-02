import 'package:flutter/material.dart';

class ShadyExpansionTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Text('my title'),
        children: <Widget>[
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '),
        ],
      );
  }
}
