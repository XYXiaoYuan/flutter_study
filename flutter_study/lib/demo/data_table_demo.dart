import 'package:flutter/material.dart';
import 'package:flutter_study/model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  late int _sortColumnIndex;
  bool _sortAscending = true;

  void _invertSelect() {
    setState(() {
      posts.map((post) {
        post.selected = !post.selected;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('DataTableDemo'),
          elevation: 0.0,
          actions: <Widget>[
            TextButton(child: Text('反选'), onPressed: _invertSelect),
          ]),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              onSelectAll: (bool? value) {
                setState(() {
                  posts.map((post) {
                    post.selected = value ?? false;
                  }).toList();
                });
              },
              columns: [
                DataColumn(
                    label: Text('Title'),
                    onSort: (int index, bool ascending) {
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;

                        posts.sort((a, b) {
                          if (!ascending) {
                            final c = a;
                            a = b;
                            b = c;
                          }

                          return a.title.length.compareTo(b.title.length);
                        });
                      });
                    }),
                DataColumn(label: Text('Author')),
                DataColumn(label: Text('Image')),
              ],
              rows: posts.map((post) {
                return DataRow(
                    selected: post.selected,
                    onSelectChanged: (bool? value) {
                      setState(() {
                        if (post.selected != value) {
                          post.selected = value ?? false;
                        }
                      });
                    },
                    cells: [
                      DataCell(Text(post.title)),
                      DataCell(Text(post.author)),
                      DataCell(Image.network(post.imageUrl)),
                    ]);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
