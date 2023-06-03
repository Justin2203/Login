import 'package:flutter/material.dart';

import 'splash.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: splash());
  }
}
