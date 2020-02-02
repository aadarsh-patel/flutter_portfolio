import 'package:flutter/material.dart';

class ShadyGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Container(
      width: queryData.size.width*0.65,
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        childAspectRatio: 2.5,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Github'),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Codechef'),
            color: Colors.teal[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Linkedin'),
            color: Colors.teal[300],
          ),
          Card(child: Text('Data1')),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Data2'),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Data3'),
            color: Colors.teal[600],
          ),
        ],
      ),
    );
  }
}
