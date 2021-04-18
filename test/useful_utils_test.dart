import 'package:flutter_test/flutter_test.dart';

import 'package:useful_utils/useful_utils.dart';

void main() {
  group('Math utils', () {
    test('is odd', () {
      expect(isOdd(1), isTrue);
    });

    test('not is odd', () {
      expect(isOdd(2), isFalse);
    });

    test('is ', () {
      expect(isEven(2), isTrue);
    });

    test('not is even', () {
      expect(isEven(1), isFalse);
    });
  });
}
