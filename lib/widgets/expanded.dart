import 'package:flutter/material.dart';

class ExpandedWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(border: Border.all(width: 4, color: Colors.redAccent)),
          height: 300,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 70,
                height: 150,
                color: Colors.greenAccent,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blueAccent,
                  height: 150,
                ),
              ),
              Container(
                width: 70,
                height: 150,
                color: Colors.greenAccent,
              ),
              Expanded(
                child: Container(
                  color: Colors.blueAccent,
                  height: 150,
                ),
              ),
            ],
          )
        )
      )
    );
  }
}