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

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        elevation: 0.0,
        color: Colors.transparent,
        child: Container(
          width: queryData.size.width * 0.2,
          margin: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset('assets/images/IMG_5698.JPG'),
              ),
              Spacer(flex: 1,),
              Text(
                'Namaste!\nMy name is Aadarsh Patel and I welcome you to my portfolio',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Spacer(flex: 2,),
            ],
          ),
        ),
      ),
    );
  }
}
