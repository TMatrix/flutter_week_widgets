import 'package:flutter/material.dart';

class FadeTransitionWeek extends StatefulWidget {

  final Widget child;

  FadeTransitionWeek({@required this.child});

  @override
  _FadeTransitionWeekState createState() => _FadeTransitionWeekState();
}

class _FadeTransitionWeekState extends State<FadeTransitionWeek>
    with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );
    _animation = Tween(
      begin: 0.0,
      end: 1.0
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return FadeTransition(
      opacity: _animation,
      child: widget.child,
    );
  }
}