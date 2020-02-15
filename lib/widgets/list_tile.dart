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
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Card(
      color: new Color.fromRGBO(232, 255, 232, 0.2),
      child: Container(
        width: queryData.size.width*0.37,
        height: 74,
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
