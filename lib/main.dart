// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[100],
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
          ),
          backgroundColor: Colors.indigo[200],
          centerTitle: true,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicBall = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  magicBall = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$magicBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}
