import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:clay_containers/clay_containers.dart';

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
    return ClayContainer(
      color: Theme.of(context).primaryColor,
      width: 260,
      height: 60,
      depth: 40,
      spread: 3,
      borderRadius: 15,
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
