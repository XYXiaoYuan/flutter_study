
import 'package:flutter/material.dart';
import 'package:flutter_study/demo/util/tab_navigator.dart';

class MaterialComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponent'),
        elevation: 0.0
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
        ],
      )
    );
  }
}

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget FlatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('Button'),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add Button'),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget RaisedButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // )
              shape: StadiumBorder()
            )
          ),
          child: RaisedButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            elevation: 0.0,
            color: Theme.of(context).accentColor,
            // textColor: Theme.of(context).accentColor,
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16.0),
        RaisedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add Button'),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
          elevation: 16.0,
        ),
      ],
    );

    final Widget OutlineButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0),
              // )
              shape: StadiumBorder()
            )
          ),
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16.0),
        OutlineButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add Button'),
          splashColor: Colors.grey,
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget FixWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final Widget ExpandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          flex: 2,
          child: OutlineButton(
            onPressed: () {},
            child: Text('Button'),
            splashColor: Colors.grey,
            borderSide: BorderSide(
              color: Colors.black,
            ),
            // color: Theme.of(context).accentColor,
            textColor: Colors.black,
            highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final Widget ButtonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonThemeData(
              padding: EdgeInsets.symmetric(horizontal: 64.0),
            )
          ),
          child: ButtonBar(
            children: <Widget>[
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                // color: Theme.of(context).accentColor,
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Button'),
                splashColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.black,
                ),
                // color: Theme.of(context).accentColor,
                textColor: Colors.black,
                highlightedBorderColor: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 64.0),
                    )
                  ),
                  child: ButtonBar(
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {},
                        child: Text('Button'),
                        splashColor: Colors.grey,
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        // color: Theme.of(context).accentColor,
                        textColor: Colors.black,
                        highlightedBorderColor: Colors.grey,
                      ),
                      OutlineButton(
                        onPressed: () {},
                        child: Text('Button'),
                        splashColor: Colors.grey,
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                        // color: Theme.of(context).accentColor,
                        textColor: Colors.black,
                        highlightedBorderColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              ],
            )
          ],
        ),
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      backgroundColor: Colors.black87,
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      )
    );

    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      floatingActionButton: _floatingActionButtonExtended,
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        NavigatorUtil.push(context, page);
      }
    );
  }
}