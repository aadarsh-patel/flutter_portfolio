import 'package:flutter/material.dart';

class ShadyChip extends StatelessWidget {
  final String title;

  ShadyChip(this.title);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        title,
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
