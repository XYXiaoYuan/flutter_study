import 'package:flutter_study/demo/test/test_demo.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return hello + something.', (){
    var string = NinghaoTestDemo.greet('ninghao');
    expect(string, 'hello ninghao');
  });
}