import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay(hour: 9, minute: 30);

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

  Future _selecteTime() async {
    final TimeOfDay time = await showTimePicker(
      context: context, 
      initialTime: _selectedTime,
    );

    if (time == null) return;

    setState(() {
      _selectedTime = time;
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
                SizedBox(width: 32.0),
                InkWell(
                  onTap: _selecteTime,
                  child: Row(
                    children: <Widget>[
                      Text(_selectedTime.format(context)),
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