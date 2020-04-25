import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Ask me Anything"),
        ),
        body: Ball(),
      ),
    ));

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  var rand = 1;

  Void randy() {
    setState(() {
      rand = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    print(randy());
                  },
                  child: Image.asset('images/ball$rand.png')))
        ],
      ),
    );
  }
}
