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

    double _varHeight = 655;
    if (queryData.size.width <= 567) {
      _varHeight = 990;
    } else if (queryData.size.width <= 1123) {
      _varHeight = 750;
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
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  width: 2.0,
                  color: Colors.white.withOpacity(0.1),
                ),
              ),
              width: 200,
              height: 200,
              child: Image.asset('assets/images/test.png'),
            ),
            SizedBox(height: 32),
            Container(
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SelectableText(
                  "Hello! I'm Aadarsh Patel\n2nd Year CSE Student at IIIT Naya Raipur.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
            Text(
              'Things I love to do 💻:',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20.0),
            Wrap(
              spacing: 24.0,
              runSpacing: 10.0,
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
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Wrap(
              spacing: 20.0,
              runSpacing: 12.0,
              direction: Axis.horizontal,
              children: <Widget>[
                ShadyListTile(
                  'assets/images/link_logo.png',
                  'assets/images/link_title.png',
                  'https://www.linkedin.com/in/aadarsh-patel-634ab1167/',
                ),
                ShadyListTile(
                  'assets/images/git_logo.png',
                  'assets/images/git_title.png',
                  'https://github.com/aadarsh-patel',
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
