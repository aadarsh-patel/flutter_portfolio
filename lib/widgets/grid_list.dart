import 'package:flutter/material.dart';

import 'expansion_tile.dart';

class ShadyGridList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Container(
      width: queryData.size.width * 0.65,
      child: Card(
        color: Colors.blueAccent,
        child: Wrap(
          direction: Axis.horizontal,
          children: <Widget>[
            ShadyExpansionTile(),
            ShadyExpansionTile(),
            ShadyExpansionTile(),
            ShadyExpansionTile(),
            ShadyExpansionTile(),
            ShadyExpansionTile(),
          ],
        ),
      ),
    );
  }
}
