import 'package:flutter/material.dart';

import 'list_tile.dart';
import 'chip.dart';

class ShadyWrapList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MediaQueryData queryData;
    // queryData = MediaQuery.of(context);

    return Container(
        height: 600,       //TODO use mediaquery height
        margin: const EdgeInsets.only(top: 10.0),
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Spacer(flex: 1),
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
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 4.0),
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
              Spacer(flex: 1),
            ],
          ),
      ),
    );
  }
}
