import 'package:flutter/material.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/material_components.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/state_management_demo.dart';
import 'demo/util/tab_navigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Home(),
        initialRoute: '/state-management',
        routes: {
          '/': (context) => Home(),
          '/state-management': (context) => StateManagermentDemo()
        },
        theme: ThemeData(
          primaryColor: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70,
          accentColor: Color.fromRGBO(3, 54, 255, 1.0),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('NINGHAO'),
            actions: <Widget>[
              _IconButton(
                  icon: Icon(Icons.input),
                  tooltip: 'About',
                  page: Page(title: 'About')),
              _IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Search',
                  page: MaterialComponent()),
            ],
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon: Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            ),
          ),
          backgroundColor: Colors.grey[100],
          body: TabBarView(children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            SliverDemo()
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}

class _IconButton extends StatelessWidget {
  final Icon icon;
  final String tooltip;
  final Widget page;

  _IconButton({this.icon, this.tooltip, this.page});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: icon,
        tooltip: tooltip,
        onPressed: () => {NavigatorUtil.push(context, page)});
  }
}
