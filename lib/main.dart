import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BaseApp(),
        title: "MIddle class Testing app",
      ),
    );

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Example App"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: MyApp(),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                padding: EdgeInsets.all(32),
                child: Column(
                  children: <Widget>[
                    Image.network(
                      "http://pluspng.com/img-png/random-png-image-mabel-s-sweater-creator-random-gnome-png-gravity-falls-wiki-fandom-powered-by-wikia-510.png",
                    ),
                    Text("Gnomo"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
}
