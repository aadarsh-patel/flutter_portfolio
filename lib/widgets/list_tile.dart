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
    return Card(
      color: Colors.transparent,
      child: Container(
        width: 450,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset('$logoPath'),
          ),
          title: Image.asset('$titlePath'),
          onTap: _launchURL,
        ),
      ),
    );
  }
}
