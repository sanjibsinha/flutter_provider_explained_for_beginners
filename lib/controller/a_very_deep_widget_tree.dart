import 'package:flutter/material.dart';
import 'package:flutter_provider_explained_for_beginners/model/counting_the_number.dart';
import 'package:provider/provider.dart';

class ColumnClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /// Only this widget will be rebuilt
    //final CountingTheNumber message = Provider.of<CountingTheNumber>(context);
    /// we're using Consumer widget instead of Provider.of().
    /// we've put our Consumer widget as deep as possible in the tree
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(
            5.0,
          ),
          child: Consumer<CountingTheNumber>(
            builder: (context, message, child) {
              return Column(
                children: [
                  child,
                  Text(
                    '${message.message}',
                    style: TextStyle(fontSize: 25.0),
                  ),
                ],
              );
            },

            /// building a humongous widget tree
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'First Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Second Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 0,
                ),
                Column(
                  children: [
                    Text(
                      'First Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Second Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          margin: const EdgeInsets.all(
            5.0,
          ),
          child: Consumer<CountingTheNumber>(
            builder: (context, message, child) {
              return Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      message.testMessage();
                    },
                    tooltip: 'Increment',
                    child: Icon(Icons.ac_unit_rounded),
                  ),
                  child,
                ],
              );
            },

            /// building another humongous widget tree
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      'First Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Second Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 0,
                ),
                Column(
                  children: [
                    Text(
                      'First Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Second Row',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
