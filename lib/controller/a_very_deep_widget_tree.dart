import 'package:flutter/material.dart';
import 'package:flutter_provider_explained_for_beginners/model/counting_the_number.dart';
import 'package:provider/provider.dart';

class ColumnClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Only this widget will be rebuilt
    final CountingTheNumber counter = Provider.of<CountingTheNumber>(context);
    return Column(
      children: [
        Text(
          '${counter.number}',
          style: TextStyle(fontSize: 25.0),
        ),
        SizedBox(height: 10.0),
        FloatingActionButton(
          onPressed: () {
            counter.increaseNumber();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
