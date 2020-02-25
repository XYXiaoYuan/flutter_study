import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
          primaryColor: Colors.yellow,
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            appBar: AppBar(
              leading: IconButton(
                  icon: Icon(Icons.menu),
                  tooltip: 'Navigation',
                  onPressed: () => debugPrint('Navigation button is pressed.')),
              title: Text('NINGHAO'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search),
                    tooltip: 'Search',
                    onPressed: () => debugPrint('Search button is pressed.'))
              ],
              elevation: 0.0,
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist)),
                  Tab(icon: Icon(Icons.change_history)),
                  Tab(icon: Icon(Icons.directions_bike)),
                ],
                indicatorColor: Colors.white,
                indicatorWeight: 2,
              ),
            ),
            body: TabBarView(children: <Widget>[
              Icon(Icons.local_florist, size: 128.0, color: Colors.black12),
              Icon(Icons.change_history, size: 128.0, color: Colors.black12),
              Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
            ])));
  }
}
