import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:clay_containers/clay_containers.dart';

import 'msg_function.dart';
import 'snack_bar.dart';

class ShadyForm extends StatefulWidget {
  @override
  _ShadyFormState createState() => _ShadyFormState();
}

class _ShadyFormState extends State<ShadyForm> {
  final _nameController = TextEditingController();
  final _msgController = TextEditingController();
  String name = '';
  String msg = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    double _varHeight = 650;

    if (queryData.size.width < 906 && queryData.size.width > 764) {
      _varHeight = 700;
    } else if (queryData.size.width < 764 && queryData.size.width > 516) {
      _varHeight = 720;
    } else if (queryData.size.width < 516) {
      _varHeight = 750;
    }

    return Container(
      height: _varHeight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Spacer(flex: 1),
          Container(
            width: 420,
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      'Email me at\npatelaadarsh0@gmail.com',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    trailing: ClayContainer(
                      spread: 2,
                      borderRadius: 10,
                      color: Theme.of(context).primaryColor,
                      child: IconButton(
                        color: Colors.black,
                        icon: Icon(Icons.content_copy),
                        onPressed: () {
                          Clipboard.setData(new ClipboardData(
                              text: "patelaadarsh0@gmail.com"));
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'or',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'You can send me a message down below 👇',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Your Name',
                              labelStyle: TextStyle(),
                              border: OutlineInputBorder(),
                            ),
                            controller: _nameController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your name!';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 6.0),
                          TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              labelText: 'Your message',
                              border: OutlineInputBorder(),
                            ),
                            maxLines: 4,
                            controller: _msgController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your message!';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ClayContainer(
                    spread: 3,
                    borderRadius: 10,
                    depth: 30,
                    color: Theme.of(context).primaryColor,
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          name = _nameController.text;
                          msg = _msgController.text;
                          sendMessage(name, msg);
                          _msgController.text = '';
                          _nameController.text = '';
                          Scaffold.of(context).showSnackBar(shadySnackBar);
                        }
                      },
                      child: Text(
                        'Send message',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(flex: 1),
          Text(
            'Source code of this website is available on my Github.\nMade with ❤️ using Flutter.',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
