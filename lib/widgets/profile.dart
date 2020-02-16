import 'package:flutter/material.dart';

class ShadyProfile extends StatefulWidget {
  @override
  _ShadyProfileState createState() => _ShadyProfileState();
}

class _ShadyProfileState extends State<ShadyProfile> {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Card(
      elevation: 0.0,
      color: Colors.transparent,
      child: Container(
        height: 600,
        margin: const EdgeInsets.only(left: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(flex: 1),
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Container(
                width: queryData.size.width * 0.2,
                child: Image.asset('assets/images/IMG_5698.JPG'),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Text(
              'Namaste!\nMy name is Aadarsh Patel and I welcome you to my portfolio',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
