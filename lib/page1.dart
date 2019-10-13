import 'package:ad_banner_fixed_bottom/page2.dart';
import 'package:flutter/material.dart';

import 'adbanner_widget.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("A snackbar that overlays the bottom sheet."),
                ),
              ),
              child: Text("Show snackbar"),
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Page2(),
                ),
              ),
              child: Text("Go to page 2"),
            )
          ],
        ),
      ),
      bottomSheet: AdBannerWidget(),
    );
  }
}
