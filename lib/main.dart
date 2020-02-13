import 'package:flutter/material.dart';

import 'animations/particle_effect.dart';
import 'animations/animated_background.dart';
import 'package:firebase/firebase.dart' as Firebase;
import 'theme_data/shady_theme_data.dart';
import 'widgets/home.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future main() async {
  await DotEnv().load('.env');

  if (Firebase.apps.isEmpty) {
    print(Firebase.apps);
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: Stack(
          children: <Widget>[
            ShadyAnimatedBackground(),
            ShadyParticleEffect(),
            HomePage(),
          ],
        ),
      ),
    );
  }
}
