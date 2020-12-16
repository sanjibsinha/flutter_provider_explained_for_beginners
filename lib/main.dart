import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Explained to Beginners',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FlutterProviderExplainedToBeginners(),
    );
  }
}

class FlutterProviderExplainedToBeginners extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
