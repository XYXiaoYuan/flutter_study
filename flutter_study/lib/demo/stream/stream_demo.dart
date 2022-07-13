import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('StreamDemo'), elevation: 0.0),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  late StreamSubscription _streamDemoSubscription;
  late StreamController<String> _streamDemo;
  late StreamSink _sinkDemo;
  String _data = '...';

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print('Create a Stream');
    // Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    _streamDemo = StreamController.broadcast();
    _sinkDemo = _streamDemo.sink;

    print('Start listening on a Stream');
    _streamDemoSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
    _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone);

    print('Initialize completed');
  }

  void onError(error) {
    print('Error: $error ');
  }

  void onDone() {
    print('Done!');
  }

  void onData(String data) {
    setState(() {
      _data = data;
    });
    print('$data');
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  void _pauseStream() {
    print('Pause subscriptoin');
    _streamDemoSubscription.pause();
  }

  void _resumeStream() {
    print('Resume subscriptoin');
    _streamDemoSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel subscriptoin');
    _streamDemoSubscription.cancel();
  }

  Future<String?> _addDataToStream() async {
    print('Add data to strem');

    String data = await fetchData();
    // _streamDemo.add(data);
    _sinkDemo.add(data);
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    return 'hello ~';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Text('$_data'),
          StreamBuilder(
              stream: _streamDemo.stream,
              initialData: '...',
              builder: (context, snapshot) {
                return Text('${snapshot.data}');
              }),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton(
              child: Text('Add'),
              onPressed: _addDataToStream,
            ),
            TextButton(
              child: Text('Pause'),
              onPressed: _pauseStream,
            ),
            TextButton(
              child: Text('Resume'),
              onPressed: _resumeStream,
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: _cancelStream,
            ),
          ]),
        ],
      ),
    ));
  }
}
