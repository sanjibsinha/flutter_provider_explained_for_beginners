import 'package:flutter/material.dart';
import 'package:flutter_provider_explained_for_beginners/model/counting_the_number.dart';
import 'package:provider/provider.dart';

class ColumnClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Only this widget will be rebuilt
    final CountingTheNumber message = Provider.of<CountingTheNumber>(context);
    return Column(
      children: [
        Text(
          '${message.message}',
          style: TextStyle(fontSize: 25.0),
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          onPressed: () {
            message.testMessage();
          },
          tooltip: 'Increment',
          child: Icon(Icons.ac_unit_rounded),
        )
      ],
    );
  }
}
