import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadius _borderRadious = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadious,
            color: _color
          ),

        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _setStade,
      ),
    );
  }

  void _setStade() {

    final random = Random();

    setState(() {
      _color = Color.fromRGBO(
          random.nextInt(200),
          random.nextInt(200),
          random.nextInt(200),
          1);
      _height = random.nextInt(300).toDouble();
      _width = random.nextInt(300).toDouble();

      _borderRadious = BorderRadius.circular(random.nextInt(100).toDouble());

    });




  }
}
