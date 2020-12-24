import 'package:flutter/material.dart';
import 'package:flutter_provider_explained_for_beginners/controller/a_very_deep_widget_tree.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Provider Explained to Beginners'),
        ),
        body: Center(
          child: AVeryDeepWidgetTree(),
          // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}

class AVeryDeepWidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ‘Provider.of’, just like Consumer needs to know the type of the model.
    // We need to specify the model ‘CountingTheNumber’.
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        padding: const EdgeInsets.all(
          10.0,
        ),
        children: <Widget>[
          Text(
            'This Text and Image are on the top',
            style: TextStyle(fontSize: 20.0),
          ),
          Container(
            width: 350.0,
            height: 250.0,
            child: Image.network(
                'https://i0.wp.com/zerodotone.net/wp-content/uploads/2020/12/cropped-zerodotone-beginnrers.jpg?fit=1320%2C743&ssl=1'),
          ),
          SizedBox(
            height: 5.0,
          ),
          //now we are going to build a very deep widget tree
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'This widget is below image.',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Press the button below to see text changes:',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  // However, the whole top widgets will remain unaffected when state changes
                  ColumnClass(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
