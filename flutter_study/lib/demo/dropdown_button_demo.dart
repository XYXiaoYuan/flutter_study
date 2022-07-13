import 'package:flutter/material.dart';

class DropDownButtonDemo extends StatefulWidget {
  @override
  _DropDownButtonDemoState createState() => _DropDownButtonDemoState();
}

class _DropDownButtonDemoState extends State<DropDownButtonDemo> {
  String _dropValue = '语文';

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
                DropdownButton(
                    icon: Icon(Icons.add),
                    iconEnabledColor: Colors.red,
                    value: _dropValue,
                    items: [
                      DropdownMenuItem(child: Text('语文'), value: '语文'),
                      DropdownMenuItem(child: Text('数学'), value: '数学'),
                      DropdownMenuItem(child: Text('英语'), value: '英语')
                    ],
                    onChanged: (value) {
                      setState(() {
                        // _dropValue = value;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
