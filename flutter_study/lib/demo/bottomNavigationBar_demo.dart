import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.explore), 
        title: Text('Expolre')
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.history), 
        title: Text('History')
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.list), 
        title: Text('List')
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person), 
        title: Text('Mine')
      ),
    ]);
  }
}
