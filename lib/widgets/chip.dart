import 'package:flutter/material.dart';

import 'package:clay_containers/clay_containers.dart';

class ShadyChip extends StatelessWidget {
  final String title;

  ShadyChip(this.title);

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      color: Theme.of(context).primaryColor,
      borderRadius: 20,
      emboss: true,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
