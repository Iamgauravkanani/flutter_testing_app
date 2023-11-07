import 'package:flutter_test_app/Class/increment_class.dart';
import 'package:test/test.dart';

void main() {
  test("Count Value should be incremented..", () {
    Increment c1 = Increment();

    c1.increment();

    expect(c1.count, 1);
  });
}
