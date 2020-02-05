import 'package:flutter/material.dart';

class OpacityWeek extends StatefulWidget {
  @override
  OpacityWeekState createState() => OpacityWeekState();
}

class OpacityWeekState extends State<OpacityWeek>{

  double _opacity;
  Duration _opacityDuration;


  @override
  void initState() {
    super.initState();
    _opacity = 0.9;
    _opacityDuration = Duration(seconds: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Transform.translate(
              offset: Offset(30, 50),
              child: Container(
                color: Colors.lightBlueAccent,
                width: 300,
                height: 300,
              ),
            ),
            Transform.translate(
              offset: Offset(60, 100),
              child: Opacity(
                opacity: 0.75,
                child: Container(
                  color: Colors.limeAccent,
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(90, 150),
              child: AnimatedOpacity(
                opacity: _opacity,
                duration: _opacityDuration,
                child: Container(
                  color: Colors.deepOrangeAccent,
                  width: 300,
                  height: 300,
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(150, 5),
              child: RaisedButton(
                child: Text(
                  'Let animate!',
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                onPressed: _animateOpacity,
                color: Colors.deepPurpleAccent,
              )
            ),
          ],
        ),
      ),
    );
  }

  void _animateOpacity() {
    setState(() {
      _opacity = _opacity == 0.55 ? 0.8 : 0.55;
      _opacityDuration = _opacityDuration == Duration(seconds: 2) ? Duration(seconds: 0) : Duration(seconds: 2);
    });
  }
}