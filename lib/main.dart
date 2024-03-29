import 'dart:io';

import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';

import 'page1.dart';

void main() {
  Admob.initialize(getAppId());
  runApp(MyApp());
}

String getAppId(){
  if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544~1458002511';
  } else if (Platform.isAndroid) {
    return 'ca-app-pub-3940256099942544~3347511713';
  }
  return null;
}

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
