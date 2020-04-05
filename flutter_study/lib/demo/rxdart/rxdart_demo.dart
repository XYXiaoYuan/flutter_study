import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0
      ),
      body: Center(
        child: RxDartDemoHome(),
      )
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  @override
  void initState() {
    super.initState();

    Observable<String> _observable = Observable(Stream.fromIterable(['hello', '您好']));

    _observable.listen(print);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}