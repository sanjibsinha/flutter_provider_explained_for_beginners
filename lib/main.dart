import 'package:flutter/material.dart';
import 'package:flutter_provider_explained_for_beginners/model/counting_the_number.dart';
import 'package:flutter_provider_explained_for_beginners/view/my_home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    // ChangeNotifierProvider, unlike ChangeNotifier, comes from the Provider package
    // and it provides an instance of a ChangeNotifier to the widgets,
    // which have already subscribed to it
    // we should place the ChangeNotifierProvider Just above the widgets that need to access it.
    // you will understand provider better if you already have understood how
    // InheritedWidget works
    ChangeNotifierProvider(
      create: (context) =>
          CountingTheNumber(), // designed Model is provided to the desired widgets
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
