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
  Future _showAlter(String str) async {
    String s = await showDialog(
        context: context,
        builder: (BuildContext ctx) => AlertDialog(
              title: Text(str),
              actions: <Widget>[
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () => Navigator.pop(ctx, "This is my return"),
                ),
              ],
            ));

    debugPrint(s);

    return s;
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: <Widget>[
            Text("Hello"),
            RaisedButton(
              onPressed: () => _showAlter("uwu"),
              child: Text("Click"),
            ),
          ],
        ),
      );
}
