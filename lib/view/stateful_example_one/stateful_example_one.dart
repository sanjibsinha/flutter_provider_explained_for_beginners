import 'package:flutter/material.dart';
import 'package:flutter_provider_explained_for_beginners/view/stateful_example_one/a_widget_that_manages_own_state.dart';

class StateFulExampleOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'A widget that manages own state',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ),
      body: Center(child: AWidgetThatManagesOwnState()),
    );
  }
}
