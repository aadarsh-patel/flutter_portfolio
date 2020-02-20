import 'package:flutter/material.dart';

import 'chip.dart';
import 'list_tile.dart';

class ShadyProfile extends StatefulWidget {
  @override
  _ShadyProfileState createState() => _ShadyProfileState();
}

class _ShadyProfileState extends State<ShadyProfile> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    double _varHeight = 650;
    if (queryData.size.width < 906 && queryData.size.width > 764) {
      _varHeight = 750;
    } else if (queryData.size.width < 764 && queryData.size.width > 516) {
      _varHeight = 850;
    } else if (queryData.size.width < 516) {
      _varHeight = 950;
    }

    return Card(
      elevation: 0.0,
      color: Colors.transparent,
      child: Container(
        height: _varHeight,
        margin: const EdgeInsets.all(6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30),
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Container(
                width: 200,
                height: 200,
                child: Image.asset('assets/images/IMG_5698.JPG'),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Hello,\nMy name is Aadarsh Patel and I welcome you to my portfolio.\n2nd year CSE Student at IIIT Naya Raipur.🎓',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 30),
            Text(
              '  Things that I love to do:',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 4.0),
              Wrap(
                spacing: 10.0,
                runSpacing: 3.0,
                direction: Axis.horizontal,
                children: <Widget>[
                  ShadyChip('App Development'),
                  ShadyChip('Competitive Coding'),
                  ShadyChip('Web Development'),
                  ShadyChip('UI Design'),
                ],
              ),
              Spacer(flex: 1),
            Text(
              'My profile links:',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Wrap(
              spacing: 10.0,
              runSpacing: 3.0,
              direction: Axis.horizontal,
              children: <Widget>[
                ShadyListTile(
                  'assets/images/git_logo.png',
                  'assets/images/git_title.png',
                  'https://github.com/aadarsh-patel',
                ),
                ShadyListTile(
                  'assets/images/link_logo.png',
                  'assets/images/link_title.png',
                  'https://www.linkedin.com/in/aadarsh-patel-634ab1167/',
                ),
                ShadyListTile(
                  'assets/images/code_logo.png',
                  'assets/images/code_title.png',
                  'https://www.codechef.com/users/aadarsh_patel',
                ),
                ShadyListTile(
                  'assets/images/stack_logo.png',
                  'assets/images/stack_title.png',
                  'https://stackoverflow.com/users/11555932/aadarsh-patel',
                ),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
