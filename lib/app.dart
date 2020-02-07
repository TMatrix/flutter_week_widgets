import 'package:flutter/material.dart';
import 'package:flutter_week_widget/widgets/pageView.dart';
// import 'package:flutter_week_widget/widgets/safeArea.dart';
// import './widgets/expanded.dart';
// import 'package:flutter_week_widget/widgets/wrap.dart';
// import './widgets/animatedContainer.dart';
// import './widgets/opacity.dart';
// import './widgets/futureBuilder.dart';
// import 'package:flutter_week_widget/widgets/floatingActionButton.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: SafeAreaWeek(),
      // home: ExpandedWeek()
      // home: WrapWeek()
      // home: AnimatedContainerWeek()
      // home: OpacityWeek(),
      // home: FutureBuilderWeek(),
      // home: AnimatedContainerWeek()
      // home: FABWeek(),
      home: PageViewWeek()
    );
  }
}