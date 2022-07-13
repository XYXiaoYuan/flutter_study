// import 'package:flutter/material.dart';
// import 'package:scoped_model/scoped_model.dart';

// class StateManagermentDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ScopedModel(
//       model: CounterModel(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('StateManagermentDemo'),
//           elevation: 0.0,
//         ),
//         body: CounterWrapper(),
//         floatingActionButton: ScopedModelDescendant<CounterModel>(
//           rebuildOnChange: false,
//           builder: (context, _, model) => FloatingActionButton(
//             child: Icon(Icons.add),
//             onPressed: model.increaseCount,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CounterWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(child: Counter());
//   }
// }

// class Counter extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ScopedModelDescendant<CounterModel>(
//       builder: (context, _, model) => ActionChip(
//         label: Text('${model.count}'),
//         onPressed: model.increaseCount,
//       ),
//     );
//   }
// }

// class CounterProvider extends InheritedWidget {
//   final int count;
//   final VoidCallback increaseCount;
//   final Widget child;

//   CounterProvider(
//       {required this.count, required this.increaseCount, required this.child})
//       : super(child: child);

//   // static CounterProvider of(BuildContext context) =>
//   // context.inheritFromWidgetOfExactType(CounterProvider);

//   @override
//   bool updateShouldNotify(InheritedWidget oldWidget) {
//     return true;
//   }
// }

// class CounterModel extends Model {
//   int _count = 0;
//   int get count => _count;

//   void increaseCount() {
//     _count += 1;
//     notifyListeners();
//   }
// }
