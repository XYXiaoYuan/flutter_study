import 'package:flutter/material.dart';

class StateManagermentDemo extends StatefulWidget {
  @override
  _StateManagermentDemoState createState() => _StateManagermentDemoState();
}

class _StateManagermentDemoState extends State<StateManagermentDemo> {
  int _count = 0;
  void _increaseCount() {
    setState(() {
      _count += 1;
    });
    print(_count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateManagermentDemo'),
        elevation: 0.0,
      ),
      body: Counter(_count, _increaseCount),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _increaseCount,
      ),
    );;
  }
}

class Counter extends StatelessWidget {
  final int count;
  final VoidCallback increaseCount;

  Counter(this.count, this.increaseCount);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ActionChip(
        label: Text('$count'),
        onPressed: increaseCount,
      ),
    );
  }
}
