import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

//Stateless
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Magic Ball',
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: Ball(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

//Stateful
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80.0,
            width: 200.0,
            child: Text(
              'Tap The Ball to Get Your Answer',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25.0,
                height: 1.25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            child: Image.asset(
              'images/ball$ballNum.png',
            ),
            onPressed: () {
              setState(
                () {
                  //buttonPressCheck();
                  ballNum = Random().nextInt(5) + 1;
                  //print(ballNum);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

void buttonPressCheck() {
  print('Button is Clicked!');
}
