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
    if (queryData.size.width <= 567) {
      _varHeight = 870;
    } else if (queryData.size.width <= 1123) {
      _varHeight = 720;
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
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                color: new Color.fromRGBO(232, 255, 232, 0.1),
                width: 200,
                height: 200,
                child: Image.asset('assets/images/test.png'),
              ),
            ),
            SizedBox(height: 32),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Hi! I\'m',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: ' Aadarsh Patel\n',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          blurRadius: 7.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  TextSpan(
                    text: '2nd year CSE Student at IIIT Naya Raipur.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  TextSpan(
                    text: '🎓',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(flex:1),
            Text(
              'Things I love to do 💻:',
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
            Spacer(flex:1),
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
