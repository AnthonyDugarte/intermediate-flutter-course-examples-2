import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
        title: "MIddle class Testing app",
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void _showSnak() {
    _scaffold.currentState.showSnackBar(
      SnackBar(
        content: Text("OH MY GAAAAH"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        key: _scaffold,
        appBar: AppBar(
          title: Text("My Example App"),
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Center(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: _showSnak,
                  child: Text("Click"),
                ),
              ],
            ),
          ),
        ),
      );
}
