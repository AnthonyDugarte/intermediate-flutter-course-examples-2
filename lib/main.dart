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

enum Options { YES, NO }

class _MyAppState extends State<MyApp> {
  String _value;

  Future _event() async {
    Options op = await showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        title: Text("Dialog"),
        children: <Widget>[
          SimpleDialogOption(
            child: Text("Ok"),
            onPressed: () => Navigator.pop(context, Options.YES),
          ),
          SimpleDialogOption(
            child: Text("Cancel"),
            onPressed: () => Navigator.pop(context, Options.NO),
          )
        ],
      ),
    );

    setState(() => _value = op.toString());
  }

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: <Widget>[
            Text(_value),
            RaisedButton(
              onPressed: _event,
              child: Text("Click"),
            ),
          ],
        ),
      );
}
