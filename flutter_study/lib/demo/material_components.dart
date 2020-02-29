
import 'package:flutter/material.dart';
import 'package:flutter_study/demo/popup_menu_button_demo.dart';
import 'package:flutter_study/demo/radio_demo.dart';
import 'package:flutter_study/demo/util/tab_navigator.dart';

import 'button_demo.dart';
import 'checkbox_demo.dart';
import 'floating_action_demo.dart';
import 'form_demo.dart';

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
          ListItem(title: 'Radio', page: RadioDemo()),
          ListItem(title: 'CheckBox', page: CheckBoxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(title: 'Button', page: ButtonDemo()),
          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
        ],
      )
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