import 'package:flutter/material.dart';

class SliverAppBarWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Sliver App Bar'),
            centerTitle: true,
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.purpleAccent
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}