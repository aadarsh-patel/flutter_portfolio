import 'package:flutter/material.dart';

import 'msg_function.dart';
import 'snack_bar.dart';

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
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Image.asset('assets/images/IMG_5698.JPG'),
              ),
              Text(
                'Namaste!\nMy name is Aadarsh Patel and I welcome you to my portfolio. SEE you soon',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Type your message here',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
                controller: _controller,
              ),
              FlatButton(
                  onPressed: () {
                    msg = _controller.text;
                    sendMessage(msg);
                    _controller.text = '';
                    Scaffold.of(context).showSnackBar(shadySnackBar);
                  },
                  child: Text('Send message')),
            ],
          ),
        ),
      ),
    );
  }
}
