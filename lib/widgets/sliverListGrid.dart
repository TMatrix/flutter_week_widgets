import 'package:flutter/material.dart';
import 'package:flutter_week_widget/widgets/sliverAppBar.dart';

class SliverListGridWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            title: Text('App bar'),
            floating: true,
            backgroundColor: Colors.deepOrange,
            pinned: true,
          ),
          SliverList(delegate: SliverChildListDelegate(
              <Widget>[
                Container(
                  color: Colors.redAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.blueAccent,
                  height: 200,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.greenAccent,
                  height: 200,
                ),
                Container(
                  color: Colors.yellowAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.purpleAccent,
                  height: 200,
                ),
              ]
            )
          ),
          SliverGrid.count(
            crossAxisCount: 4,
            children: <Widget>[
              Container(
                  color: Colors.redAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.blueAccent,
                  height: 200,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.greenAccent,
                  height: 200,
                ),
                Container(
                  color: Colors.yellowAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.purpleAccent,
                  height: 200,
                ),
                Container(
                  color: Colors.redAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.blueAccent,
                  height: 200,
                ),
                Container(
                  color: Colors.amberAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.greenAccent,
                  height: 200,
                ),
                Container(
                  color: Colors.yellowAccent,
                  height: 100,
                ),
                Container(
                  color: Colors.purpleAccent,
                  height: 200,
                ),
            ],
          )
        ],
      ),
    );
  }
}