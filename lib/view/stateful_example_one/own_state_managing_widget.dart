import 'package:flutter/material.dart';

class OwnStateManagingWidget extends StatefulWidget {
  @override
  _OwnStateManagingWidgetState createState() => _OwnStateManagingWidgetState();
}

class _OwnStateManagingWidgetState extends State<OwnStateManagingWidget> {
  /// let's define the boolean value first
  ///

  bool _stateChanged = false;

  /// let's create a function that will define the setState() method
  ///
  void _changeState() {
    setState(() {
      _stateChanged = !_stateChanged;
    });
  }

  @override
  Widget build(BuildContext context) {
    /// we'll use GestureDetector so that we can tap a box that will turn green as
    /// the state is changed
    return GestureDetector(
      onTap: _changeState,
      child: Container(
        child: Center(
          child: Text(
            _stateChanged ? 'State Changed' : 'State Unchanged',
            style: TextStyle(fontSize: 35.0),
          ),
        ),
        width: 350.0,
        height: 350.0,
        decoration:
            BoxDecoration(color: _stateChanged ? Colors.green : Colors.red),
      ),
    );
  }
}

/**
 * we're going to create a class that will manage its own state
 * it's the first video on Flutter state mangemnt in detail series
 * let's start and see how it works
 * we need to tell one thing first
 * 
    State is not a widget, although in Flutter everything is widget
    State is an object We'll see that in a minute
    
 * The OwnStateManagingWidgetState class:

    Manages state for OwnStateManagingWidget.
    We'll define the _stateChanged boolean which determines the box’s current color.
    Next, we'll define the _changeState() function, which updates _stateChanged when the box is tapped and calls the setState() function to update the UI.
    At the end, we'll implement all interactive behavior for the widget.

    Okay, let's start

    

 */
