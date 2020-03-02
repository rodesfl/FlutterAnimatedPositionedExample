import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  double top = 0;
  double bottom = 0;
  double left = 0;
  double right = 0;

  Size size;

  @override
  Widget build(BuildContext context) {
    if (this.size == null) {
      this.size = MediaQuery.of(context).size;
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          AnimatedPositioned(
            curve: Curves.easeIn,
            top: this.top,
            left: this.left,
            bottom: this.bottom,
            right: this.right,
            duration: Duration(milliseconds: 500),
            child: Center(
              child: Container(
                color: Colors.greenAccent,
                width: 100,
                height: 100,
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            left: 160,
            child: RaisedButton(
              onPressed: () {
                moveUp();
              },
              child: Icon(Icons.keyboard_arrow_up),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 260,
            child: RaisedButton(
              onPressed: () {
                moveRight();
              },
              child: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 160,
            child: RaisedButton(
              onPressed: () {
                moveDown();
              },
              child: Icon(Icons.keyboard_arrow_down),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 60,
            child: RaisedButton(
              onPressed: () {
                moveLeft();
              },
              child: Icon(Icons.keyboard_arrow_left),
            ),
          )
        ],
      ),
    );
  }

  void moveUp() {
    setState(() {
      this.top -= 100;
    });
  }

  void moveDown() {
    setState(() {
      this.bottom -= 100;
    });
  }

  void moveLeft() {
    setState(() {
      this.left -= 100;
    });
  }

  void moveRight() {
    setState(() {
      this.right -= 100;
    });
  }
}
