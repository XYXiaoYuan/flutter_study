import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: Text('Button'),
          // splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add Button'),
          // splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget raisedButtonDemo = Row(
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
                  shape: StadiumBorder())),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Button'),
            // splashColor: Colors.grey,
            // elevation: 0.0,
            // color: Theme.of(context).accentColor,
            // // textColor: Theme.of(context).accentColor,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16.0),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add Button'),
          // splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,
          // elevation: 16.0,
        ),
      ],
    );

    final Widget outlineButtonDemo = Row(
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
                  shape: StadiumBorder())),
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Button'),
            // splashColor: Colors.grey,
            // borderSide: BorderSide(
            //   color: Colors.black,
            // ),
            // // color: Theme.of(context).accentColor,
            // textColor: Colors.black,
            // highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16.0),
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text('Add Button'),
          // splashColor: Colors.grey,
          // textColor: Theme.of(context).accentColor,
        ),
      ],
    );

    final Widget fixWidthButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 130.0,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Button'),
            // splashColor: Colors.grey,
            // borderSide: BorderSide(
            // color: Colors.black,
            // ),
            // color: Theme.of(context).accentColor,
            // textColor: Colors.black,
            // highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final Widget expandedButton = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Button'),
            // splashColor: Colors.grey,
            // borderSide: BorderSide(
            // color: Colors.black,
            // ),
            // color: Theme.of(context).accentColor,
            // textColor: Colors.black,
            // highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          flex: 2,
          child: OutlinedButton(
            onPressed: () {},
            child: Text('Button'),
            // splashColor: Colors.grey,
            // borderSide: BorderSide(
            //   color: Colors.black,
            // ),
            // // color: Theme.of(context).accentColor,
            // textColor: Colors.black,
            // highlightedBorderColor: Colors.grey,
            // textTheme: ButtonTextTheme.primary,
          ),
        ),
      ],
    );

    final Widget buttonBarDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme(
          data: Theme.of(context).copyWith(
              buttonTheme: ButtonThemeData(
            padding: EdgeInsets.symmetric(horizontal: 64.0),
          )),
          child: ButtonBar(
            children: <Widget>[
              OutlinedButton(
                onPressed: () {},
                child: Text('Button'),
                // splashColor: Colors.grey,
                // borderSide: BorderSide(
                // color: Colors.black,
                // ),
                // color: Theme.of(context).accentColor,
                // textColor: Colors.black,
                // highlightedBorderColor: Colors.grey,
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Button'),
                // splashColor: Colors.grey,
                // borderSide: BorderSide(
                //   color: Colors.black,
                // ),
                // color: Theme.of(context).accentColor,
                // textColor: Colors.black,
                // highlightedBorderColor: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(title: Text('ButtonDemo'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
            raisedButtonDemo,
            outlineButtonDemo,
            fixWidthButton,
            expandedButton,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}
