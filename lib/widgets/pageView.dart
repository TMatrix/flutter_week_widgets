import 'package:flutter/material.dart';
import 'package:flutter_week_widget/widgets/floatingActionButton.dart';
import 'package:flutter_week_widget/widgets/table.dart';
import './wrap.dart';
import './animatedContainer.dart';
import './opacity.dart';

class PageViewWeek extends StatelessWidget {
  final controllerHorizontal = PageController(
    initialPage: 1
  );

  final controllerVertical = PageController(
    initialPage: 0
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controllerVertical,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            FABWeek(),
            PageView(
              children: <Widget>[
                AnimatedContainerWeek(),
                OpacityWeek(),
                WrapWeek()
              ],
              controller: controllerHorizontal,
            ),
            TableWeek()
          ],
        ),
      )
    );
  }
}