// import 'package:flutter/material.dart';

// class AncestorDemo extends StatelessWidget {
//   const AncestorDemo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Context测试"),
//       ),
//       body: Container(
//         child: Builder(builder: (context) {
//           // 在 widget 树中向上查找最近的父级`Scaffold`  widget
//           Scaffold? scaffold =
//               context.findAncestorWidgetOfExactType<Scaffold>();
//           // 直接返回 AppBar的title， 此处实际上是Text("Context测试")
//           return (scaffold!.appBar as AppBar).title;
//         }),
//       ),
//     );
//   }
// }
