import 'package:flutter/material.dart';

class ShadyChip extends StatelessWidget {
  final String title;

  ShadyChip(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          width: 2.0,
          color: Colors.white.withOpacity(0.1),
        ),
      ),
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
