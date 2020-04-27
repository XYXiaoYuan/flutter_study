import 'package:flutter/material.dart';
import 'package:flutter_study/demo/i18n/map/ninghao_demo_localizations.dart';
import 'demo/animation/animation_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/bloc/bloc_demo.dart';
import 'demo/http/http_demo.dart';
import 'demo/i18n/i18n_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/material_components.dart';
import 'demo/rxdart/rxdart_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/state_management_demo.dart';
import 'demo/stream/stream_demo.dart';
import 'demo/test/test_demo.dart';
import 'demo/util/tab_navigator.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'demo/i18n/intl/ninghao_demo_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: Locale('en', 'US'),
      locale: Locale('zh', 'CN'),
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        return Locale('en', 'US');
      },
      localizationsDelegates: [
        NinghaoDemoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('zh', 'CN'),
      ],
      debugShowCheckedModeBanner: false,
      // home: Home(),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        // '/test': (context) => TestDemo()
      },
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
        accentColor: Color.fromRGBO(3, 54, 255, 1.0),
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: _MainAppBar(context),
        backgroundColor: Colors.grey[100],
        body: TabBarView(children: <Widget>[
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

class _MainAppBar extends AppBar {
  _MainAppBar(BuildContext context): super (
    title: Text('NINGHAO'),
    leading: IconButton(
      icon: Icon(Icons.menu),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    ),
    actions: <Widget>[
      _IconButton(
        icon: Icon(Icons.input),
        tooltip: 'About',
        page: Page(title: 'About')
      ),
      _IconButton(
        icon: Icon(Icons.search),
        tooltip: 'Search',
        page: MaterialComponent()
      ),
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
  );
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
      onPressed: () => NavigatorUtil.push(context, page)
    );
  }
}
