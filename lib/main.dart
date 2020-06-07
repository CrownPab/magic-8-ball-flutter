import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: ballPage(),
      ),
    );


class ballPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('AskMeAnything')),
        backgroundColor: Colors.black26,
      ),
      body: ball(),
      backgroundColor: Colors.blueAccent,
    );
  }
}

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int magicBallNumber = 1;

  void rollBallNumber (){
    setState(() {
      magicBallNumber = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(

        child: FlatButton(
            onPressed: (){
                rollBallNumber();
            },
            child: Image.asset('images/ball$magicBallNumber.png')),
    );


  }
}


