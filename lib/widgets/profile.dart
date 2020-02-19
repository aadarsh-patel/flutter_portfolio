import 'package:flutter/material.dart';

import 'chip.dart';

class ShadyProfile extends StatefulWidget {
  @override
  _ShadyProfileState createState() => _ShadyProfileState();
}

class _ShadyProfileState extends State<ShadyProfile> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    
    double varHeight = 650;
    if(queryData.size.width < 906 && queryData.size.width > 764){
      varHeight = 750;
    }
    else if(queryData.size.width < 764 && queryData.size.width > 516){
      varHeight = 850;
    }
    else if(queryData.size.width < 516){
      varHeight = 950;
    }

    return Card(
      elevation: 0.0,
      color: Colors.transparent,
      child: Container(
            height: varHeight,
            margin: const EdgeInsets.all(6),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Container(
                    width: 250,
                    height: 250,
                    child: Image.asset('assets/images/IMG_5698.JPG'),
                  ),
                ),
                Spacer(flex: 1),
                Text(
                  'Hello,\nMy name is Aadarsh Patel and I welcome you to my portfolio.\n2nd year CSE Student at IIIT Naya Raipur.🎓',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                Spacer(flex: 1),
                Text(
                  '  Things that I love to do:',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 4.0),
                Expanded(
                  child: Wrap(
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
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
    );
  }
}
