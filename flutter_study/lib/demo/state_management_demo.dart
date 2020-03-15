import 'package:flutter/material.dart';

class StateManagermentDemo extends StatefulWidget {
  @override
  _StateManagermentDemoState createState() => _StateManagermentDemoState();
}

class _StateManagermentDemoState extends State<StateManagermentDemo> {
  int _count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagermentDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Chip(
          label: Text('$_count'),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _count += 1;
          });
          print(_count);
        }
      ),
    );;
  }
}


