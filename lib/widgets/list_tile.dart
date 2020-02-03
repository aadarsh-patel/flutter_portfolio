import 'package:flutter/material.dart';

class ShadyListTile extends StatelessWidget {
  final String logoPath;
  final String titlePath;

  ShadyListTile(this.logoPath, this.titlePath);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        width: 450,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset('$logoPath'),
          ),
          title: Image.asset('$titlePath'),
        ),
      ),
    );
  }
}
