import 'package:flutter/material.dart';

class WrapWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          runSpacing: 10,
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Container(
              child: Text('1'),
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.yellowAccent,
            ),
            Container(
              child: Text('2'),
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.yellowAccent,
            ),
            Container(
              child: Text('3'),
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.yellowAccent,
            ),
            Container(
              child: Text('4'),
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.yellowAccent,
            ),
            Container(
              child: Text('5'),
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.yellowAccent,
            ),
            Container(
              child: Text('6'),
              alignment: Alignment.center,
              width: 80,
              height: 80,
              color: Colors.yellowAccent,
            )
          ],
        )
      ),
    );
  }
}