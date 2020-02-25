import 'package:flutter/material.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/view_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
            primaryColor: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.deepPurple));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            title: Text('NINGHAO'),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  onPressed: () => debugPrint('Search button is pressed.'))
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo()
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
      )
    );
  }
}
