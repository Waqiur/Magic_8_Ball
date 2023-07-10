import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  var rollBall = 1;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextButton(
        onPressed: () {
          setState(() {
            rollBall = Random().nextInt(5) + 1;
          });
        },
        child: Center(
          child: Image.asset('images/ball$rollBall.png'),
        ),
      ),
    );
  }
}
