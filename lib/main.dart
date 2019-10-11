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
      body: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ListView.builder(
        itemBuilder: (BuildContext context, int i) => ListTile(
          title: Text("Op $i"),
        ),
        itemCount: 15,
      );
}
