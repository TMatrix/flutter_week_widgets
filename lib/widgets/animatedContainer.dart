import 'package:flutter/material.dart';

class AnimatedContainerWeek extends StatefulWidget {
  @override
  AnimatedContainerWeekState createState() => AnimatedContainerWeekState();
}

class AnimatedContainerWeekState extends State<AnimatedContainerWeek> {

  Color _color = Colors.amberAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(seconds: 3),
              color: _color,
              curve: Curves.easeOut,
              height: 450,
            ),
            FlatButton(
              onPressed: _changeColor,
              child: Text('Run'),
              color: Colors.purpleAccent,
              textColor: Colors.white,
            )
          ],
        )
      )
    );
  }

  void _changeColor() {
    setState(() {
      if( _color == Colors.indigoAccent) {
        _color = Colors.amberAccent;
        return;
      }
      _color = Colors.indigoAccent;

    });
  }
}