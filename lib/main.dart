import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice!"),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.blueGrey,
        body: DiceFaces(),
      ),
    ),
  );
}

class DiceFaces extends StatefulWidget {
  @override
  _DiceFacesState createState() => _DiceFacesState();
}

class _DiceFacesState extends State<DiceFaces> {
  int rightFace = 1;
  int leftFace = 1;

  void changeFace() {
    setState(() {
      rightFace = Random().nextInt(6) + 1;
      leftFace = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
//    Remove these two lines to apply the value from outside this class
//    int rightFace = 2;
//    int leftFace = 2;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'resources/images/dice$leftFace.png',
              ),
              onPressed: () {
                changeFace();
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFace();
                print(rightFace);
              },
              child: Image.asset(
                'resources/images/dice$rightFace.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
