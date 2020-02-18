import 'dart:ui';

import 'package:flutter/material.dart';

//import 'animations/particle.dart';
import 'animations/snowflakes.dart';
import 'animations/animated_background.dart';
import 'package:firebase/firebase.dart' as Firebase;
import 'theme_data/shady_theme_data.dart';
import 'widgets/home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await DotEnv().load('.env');

  if (Firebase.apps.isEmpty) {
    Firebase.initializeApp(
      apiKey: DotEnv().env['API_KEY'],
      authDomain: DotEnv().env['AUTH_DOMAIN'],
      databaseURL: DotEnv().env['DATABASE_URL'],
      projectId: DotEnv().env['PROJECT_ID'],
      storageBucket: DotEnv().env['STORAGE_BUCKET'],
      messagingSenderId: DotEnv().env['MESSAGING_SENDER_ID'],
      appId: DotEnv().env['APP_ID'],
    );
  }

  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: shadyThemeData,
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: Stack(
        children: <Widget>[
          Positioned.fill(child: ShadyAnimatedBackground()),
          Positioned.fill(child: Snowflakes(20)),
          //Positioned.fill(child: Particles(30)),
          Positioned.fill(child: HomePage()),
        ],
      ),
    );
  }
}
