import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxItemA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title :Text('CheckBoxDemo'),
        elevation: 0.0
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                value: _checkboxItemA, 
                onChanged: (value) {
                  setState(() {
                    _checkboxItemA = value;
                  });
                },
                activeColor: Colors.black,
              )
            ],
          ),
        ],
      ),
    );
  }
}

