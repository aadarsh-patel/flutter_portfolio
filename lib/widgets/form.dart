import 'package:flutter/material.dart';

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

    return Container(
      margin: EdgeInsets.only(
        left: queryData.size.width*0.30,
        right: queryData.size.width*0.30,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }
}
