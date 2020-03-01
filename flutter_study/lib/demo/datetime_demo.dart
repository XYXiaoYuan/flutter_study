import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime _selectedDate = DateTime.now();

  Future _selecteDate() async {
    final DateTime date = await showDatePicker(
      context: context, 
      initialDate: _selectedDate, 
      firstDate: DateTime(1900), 
      lastDate: DateTime(2100),
    );

    if (date == null) return;

    setState(() {
      _selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTime'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _selecteDate,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMMMMd().format(_selectedDate)),
                      Icon(Icons.arrow_drop_down),
                    ]
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}