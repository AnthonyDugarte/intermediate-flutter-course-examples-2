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
  List<String> billieEilishPhotos = [
    "https://ichef.bbci.co.uk/news/660/cpsprodpb/EB5A/production/_97005206_0862637b-0fab-4fdc-a421-b4a5cf82d290.jpg",
    "https://culto.latercera.com/wp-content/uploads/2019/08/billie-900x600.jpg",
    "https://static2.diariouno.com.ar/media/2019/09/27-09-2019_la_joven_cantante_estadounidense_billie-2-700x395.jpg",
    "https://okdiario.com/img/2019/04/02/billie-eilish-655x368.jpg",
  ];

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: billieEilishPhotos.length,
        itemBuilder: (BuildContext context, int i) => Container(
          margin: EdgeInsets.symmetric(horizontal: 1),
          child: Image.network(
            billieEilishPhotos[i],
            loadingBuilder: (BuildContext context, Widget img,
                    ImageChunkEvent loadingProgress) =>
                loadingProgress == null
                    ? img
                    : Center(child: Text("Loading $loadingProgress")),
          ),
        ),
        scrollDirection: Axis.horizontal,
      );
}
