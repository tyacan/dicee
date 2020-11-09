import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice!"),
        ),
        backgroundColor: Colors.blueGrey,
        body: DiceFaces(),
      ),
    );
  }
}

class DiceFaces extends StatefulWidget {
  @override
  _DiceFacesState createState() => _DiceFacesState();
}

class _DiceFacesState extends State<DiceFaces> {
  int rightFace = 1;
  int leftFace = 1;

  void changeFace() {
    rightFace = Random().nextInt(6) + 1;
    leftFace = Random().nextInt(6) + 1;
    print('clows $rightFace');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'resources/images/dice$leftFace.png',
              ),
              onPressed: () {
                print('right resources/images/dice$leftFace.png');
                changeFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFace();
              },
              child: Image.asset('resources/images/dice$rightFace.png'),
            ),
          ),
        ],
      ),
    );
  }
}
