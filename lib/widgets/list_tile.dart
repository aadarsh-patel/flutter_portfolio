import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShadyListTile extends StatelessWidget {
  final String logoPath;
  final String titlePath;
  final String urlPath;

  ShadyListTile(this.logoPath, this.titlePath, this.urlPath);

  _launchURL() async {
    if (await canLaunch(urlPath)) {
      await launch(urlPath);
    } else {
      throw 'Could not launch $urlPath';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          width: 2.0,
          color: Colors.white.withOpacity(0.1),
        ),
        color: Colors.white.withOpacity(0.15),
      ),
      width: 260,
      height: 60,
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset('$logoPath'),
        ),
        title: Image.asset('$titlePath'),
        onTap: _launchURL,
      ),
    );
  }
}
