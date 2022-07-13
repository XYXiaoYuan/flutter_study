import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    required this.headerText,
    required this.body,
    required this.isExpanded,
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  bool _isExpanded = false;
  late List<ExpansionPanelItem> _expansionPanelItems;

  @override
  void initState() {
    super.initState();

    _expansionPanelItems = <ExpansionPanelItem>[
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for panel A.')),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for panel B.')),
        isExpanded: false,
      ),
      ExpansionPanelItem(
        headerText: 'Panel C',
        body: Container(
            padding: EdgeInsets.all(16.0),
            width: double.infinity,
            child: Text('Content for panel C.')),
        isExpanded: false,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ExpansionPanelDemo'), elevation: 0.0),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _expansionPanelItems[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelItems.map((ExpansionPanelItem item) {
                return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          item.headerText,
                          style: Theme.of(context).textTheme.headline6,
                        ));
                  },
                  body: item.body,
                  isExpanded: item.isExpanded,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
