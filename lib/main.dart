import 'package:flutter/material.dart';

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
      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: HomePage(),
      ),
      debugShowCheckedModeBanner: false,
      theme: shadyThemeData,
    ),
  );
}
