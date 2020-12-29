import 'package:flutter/material.dart';

///

class AWidgetThatManagesOwnState extends StatefulWidget {
  @override
  _AWidgetThatManagesOwnStateState createState() =>
      _AWidgetThatManagesOwnStateState();
}

class _AWidgetThatManagesOwnStateState
    extends State<AWidgetThatManagesOwnState> {
  bool _stateChanged = false;

  void _changeState() {
    setState(() {
      _stateChanged = !_stateChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeState,
      child: Container(
        child: Center(
          child: Text(
            _stateChanged ? 'State Changed' : 'State Unchanged',
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.white,
            ),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration:
            BoxDecoration(color: _stateChanged ? Colors.green : Colors.red),
      ),
    );
  }
}
