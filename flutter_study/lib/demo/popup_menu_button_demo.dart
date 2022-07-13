import 'package:flutter/material.dart';

class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PopupMenuButton'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuItem),
                PopupMenuButton(
                    onSelected: (value) {
                      print(value);
                      setState(() {
                        // _currentMenuItem = value;
                      });
                    },
                    onCanceled: () {
                      print('onCanceled');
                    },
                    tooltip: 'PopupMenuButton',
                    itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            value: 'Home',
                            child: Text('Home'),
                          ),
                          PopupMenuItem(
                            value: 'Discovery',
                            child: Text('Discovery'),
                          ),
                          PopupMenuItem(
                            value: 'Communnity',
                            child: Text('Communnity'),
                          ),
                        ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
