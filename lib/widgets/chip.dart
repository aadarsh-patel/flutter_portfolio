import 'package:flutter/material.dart';

class ShadyChip extends StatelessWidget {
  final String title;

  ShadyChip(this.title);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        color: new Color.fromRGBO(232, 255, 232, 0.4),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
