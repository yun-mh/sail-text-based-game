import 'package:flutter/material.dart';

import 'package:sail/splash.dart';
import 'package:sail/game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sail!',
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Color.fromRGBO(12, 12, 12, 1),
      ),
      home: SplashScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == "/game") {
          return PageRouteBuilder(
            settings: settings,
            pageBuilder: (_, __, ___) => Game(),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c),
          );
        }
        return MaterialPageRoute(builder: (_) => null);
      },
    );
  }
}
