import 'package:flutter/material.dart';

import 'msg_function.dart';
import 'snack_bar.dart';
import 'list_tile.dart';

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
    return Container(
      height: 900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height:20),
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
          Container(
            width: 460,
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  Text(
                    'You can send me a message down below 👇',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
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
                  SizedBox(height: 6.0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: FlatButton(
                      color: new Color.fromRGBO(232, 255, 232, 0.6),
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
          Text(
            'Source code of this web app is available on my github. 🌼\nI made it using Flutter web.',
            style: TextStyle(fontSize: 18),
          ),
          //SizedBox(height: 15),
        ],
      ),
    );
  }
}
