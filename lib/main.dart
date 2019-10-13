import 'package:ad_banner_fixed_bottom/adbanner_widget.dart';
import 'package:flutter/material.dart';

import 'page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ad Banner Fixed Bottom',
      theme: ThemeData(primaryColor: Colors.white),
      builder: (context, child) {
        return Scaffold(
          drawer: Drawer(
            child: Center(
              child: Text("This is a drawer"),
            ),
          ),
          body: child,
        );
      },
      home: Page1(),
    );
  }
}
