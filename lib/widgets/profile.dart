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
    final _controller = TextEditingController();
    String msg = '';

    return Container(
      padding: EdgeInsets.all(10.0),
      child: Card(
        elevation: 0.0,
        color: Colors.transparent,
        child: Container(
          width: queryData.size.width * 0.3,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset('assets/images/IMG_20151225_1453890.png'),
              Text(
                'Namaste!\nMy name is Aadarsh Patel and I welcome you to my portfolio.',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              TextField(
                controller: _controller,
              ),
              FlatButton(
                  onPressed: () {
                    print(_controller.text);
                  },
                  child: Text('Send message')),
            ],
          ),
        ),
      ),
    );
  }
}
