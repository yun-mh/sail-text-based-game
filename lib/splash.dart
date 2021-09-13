import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:sail/game_title.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness == Brightness.light;

    return AnimatedSplashScreen(
      backgroundColor: lightMode ? Colors.white : Color.fromRGBO(12, 12, 12, 1),
      splash: lightMode
          ? Image.asset(
              'assets/images/splash_logo_light.png',
            )
          : Image.asset(
              'assets/images/splash_logo_dark.png',
            ),
      splashIconSize: 150,
      nextScreen: GameTitle(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
