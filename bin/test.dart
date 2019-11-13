import 'main.dart';

import 'package:test/test.dart';

void main() {
  test('simplify fraction', () {
    expect((simplify('4/6')),'2/3');
    expect((simplify('4/0')),'Not Defined');
    expect((simplify('0/6')),'0');
  });

}