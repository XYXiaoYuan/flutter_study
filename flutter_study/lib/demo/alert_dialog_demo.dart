import 'package:flutter/material.dart';

enum Action { Ok, Cancel }

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = 'Nothing';

  Future<void> _openAlertDialog() async {
    final action = await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog'),
            content: Text('Are you sure about this?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context, Action.Cancel);
                },
                child: Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, Action.Ok);
                },
                child: Text('Ok'),
              ),
            ],
          );
        });

    switch (action) {
      case Action.Ok:
        setState(() {
          _choice = 'Ok';
        });
        break;
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Your choice is: $_choice'),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                      child: Text('Open AlertDialog'),
                      onPressed: _openAlertDialog)
                ],
              )
            ],
          )),
    );
  }
}
