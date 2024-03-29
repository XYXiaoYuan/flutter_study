import 'package:flutter/material.dart';
import 'package:flutter_study/demo/dropdown_button_demo.dart';
import 'package:flutter_study/demo/form_demo.dart';
import 'package:flutter_study/demo/paginated_data_table_demo.dart';
import 'package:flutter_study/demo/popup_menu_button_demo.dart';
import 'package:flutter_study/demo/radio_demo.dart';
import 'package:flutter_study/demo/simple_dialog_demo.dart';
import 'package:flutter_study/demo/slider_demo.dart';
import 'package:flutter_study/demo/snack_bar_demo.dart';
import 'package:flutter_study/demo/stepper_demo.dart';
import 'package:flutter_study/demo/switch_demo.dart';
import 'package:flutter_study/demo/util/tab_navigator.dart';
import 'alert_dialog_demo.dart';
import 'bottom_sheet_demo.dart';
import 'button_demo.dart';
import 'checkbox_demo.dart';
import 'card_demo.dart';
import 'chip_demo.dart';
import 'data_table_demo.dart';
import 'datetime_demo.dart';
import 'expansion_panel_demo.dart';
import 'floating_action_demo.dart';
import 'form_demo.dart';

class MaterialComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('MaterialComponent'), elevation: 0.0),
        body: ListView(
          children: <Widget>[
            ListItem(title: 'Stepper', page: StepperDemo()),
            ListItem(title: 'Card', page: CardDemo()),
            ListItem(
                title: 'PaginatedDataTable', page: PaginatedDataTableDemo()),
            ListItem(title: 'DataTable', page: DataTableDemo()),
            ListItem(title: 'Chip', page: ChipDemo()),
            ListItem(title: 'ExpansionPanel', page: ExpansionPanelDemo()),
            ListItem(title: 'SnackBar', page: SnackBarDemo()),
            ListItem(title: 'BottomSheet', page: BottomSheetDemo()),
            ListItem(title: 'AlertDialog', page: AlertDialogDemo()),
            ListItem(title: 'SimpleDialog', page: SimpleDialogDemo()),
            ListItem(title: 'Date & Time', page: DateTimeDemo()),
            ListItem(title: 'Slider', page: SliderDemo()),
            ListItem(title: 'Switch', page: SwitchDemo()),
            ListItem(title: 'Radio', page: RadioDemo()),
            ListItem(title: 'CheckBox', page: CheckBoxDemo()),
            ListItem(title: 'Form', page: FormDemo()),
            ListItem(title: 'Button', page: ButtonDemo()),
            ListItem(
                title: 'FloatingActionButton',
                page: FloatingActionButtonDemo()),
            ListItem(title: 'PopupMenuButton', page: PopupMenuButtonDemo()),
            ListItem(title: 'DropdownButton', page: DropDownButtonDemo())
          ],
        ));
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    required this.title,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        onTap: () {
          NavigatorUtil.push(context, page);
        });
  }
}
