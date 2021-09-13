import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  const Game({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Game')],
          ),
        ),
      ),
    );
  }
}
