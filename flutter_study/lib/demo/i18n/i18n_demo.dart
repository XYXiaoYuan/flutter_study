import 'package:flutter/material.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('i18nDemo'),
        elevation: 0.0
      ),
      body: Container(
        child: Center(
          child: Text('test'),
        )
      )
    );
  }
}