import 'package:flutter/material.dart';

class GameTitle extends StatefulWidget {
  @override
  _GameTitleState createState() => _GameTitleState();
}

class _GameTitleState extends State<GameTitle> {
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    new Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          if (_isLoaded) {
            print("tap!");
            Navigator.of(context).pushNamedAndRemoveUntil(
              '/game',
              (Route<dynamic> route) => false,
            );
          }
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_isLoaded ? Text('탭하여 시작하세요') : Text('')],
          ),
        ),
      ),
    );
  }
}
