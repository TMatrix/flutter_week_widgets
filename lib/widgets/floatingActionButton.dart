import 'package:flutter/material.dart';

class FABWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          Container(height: 50.0)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print('FAB pressed')
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.amberAccent,
        child: Container(
            height: 50
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}