import 'package:flutter/material.dart';

class ShadyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        child: Container(
          width: queryData.size.width * 0.3,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset('assets/images/IMG_20151225_1453890.jpg'),
              Text(
                  'Namaste!\nMy name is Aadarsh Patel and I welcome you to my portfolio.'),
            ],
          ),
        ),
      ),
    );
  }
}
