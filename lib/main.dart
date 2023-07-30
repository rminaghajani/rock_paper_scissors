import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  int top = 1;
  int bottom = 1;

  @override
  Widget build(BuildContext context) {
    return _getApplication();
  }

  Widget _getApplication() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Pacifico'),
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: _getAppBar(),
        body: _getBody(),
      ),
    );
  }

  Widget _getBody() {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('images/$top.png'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  top = Random().nextInt(3) + 1;
                  bottom = Random().nextInt(3) + 1;
                });
              },
              child: Text(
                'Start game',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            Image(
              image: AssetImage('images/$bottom.png'),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _getAppBar() {
    return AppBar(
      centerTitle: true,
      elevation: 5,
      backgroundColor: Colors.purpleAccent.shade400,
      title: Text(
        'Paper  Rock  Scissors',
        style: TextStyle(
          fontSize: 27,
        ),
      ),
    );
  }
}
