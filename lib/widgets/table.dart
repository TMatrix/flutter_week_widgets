import 'package:flutter/material.dart';

class TableWeek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Table(
          border: TableBorder.all(width: 2.0),
          columnWidths: {0: FractionColumnWidth(.15)},
          defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
          defaultColumnWidth: FixedColumnWidth(150.0), //FlexColumnWidth(1.0), FractionColumnWidth(.25), IntrinsicColumnWidth()
          children: <TableRow>[
            TableRow(
              children: <Widget>[
                Container(
                  child: Text('1'),
                  alignment: Alignment.center,
                  width: 80,
                  height: 180,
                  color: Colors.blueAccent,
                ),
                Container(
                  child: Text('1'),
                  alignment: Alignment.center,
                  width: 80,
                  height: 50,
                  color: Colors.amberAccent,
                ),
                Container(
                  child: Text('1'),
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  color: Colors.orangeAccent,
                ),
              ]
            ),
            TableRow(
              children: <Widget>[
                Container(
                  child: Text('2'),
                  alignment: Alignment.center,
                  width: 80,
                  height: 80,
                  color: Colors.greenAccent,
                ),
                Container(
                  child: Text('Column 2'),
                  alignment: Alignment.center,
                  width: 80,
                  height: 50,
                  color: Colors.pinkAccent,
                ),
                Container(
                  child: Text('Column 3'),
                  alignment: Alignment.center,
                  width: 80,
                  height: 180,
                  color: Colors.lightBlueAccent,
                ),
              ]
            ),
          ],
        )
      ),
    );
  }
}