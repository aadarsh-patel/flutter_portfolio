import 'package:flutter/material.dart';

import 'expansion_tile.dart';

class ShadyWrapList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Container(
      width: queryData.size.width * 0.65,
      child: Card(
        color: Colors.transparent,
        child: Wrap(
          spacing: 10.0,
          runSpacing: 3.0,
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
