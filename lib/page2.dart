import 'package:flutter/material.dart';

import 'adbanner_widget.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Back to page 1"),
        ),
      ),
      bottomSheet: AdBannerWidget(),
    );
  }
}
