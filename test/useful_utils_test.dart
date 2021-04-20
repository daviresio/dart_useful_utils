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

    test('needs calculate percentage', () {
      expect(percentage(value: 12.8, total: 150, round: 2), 8.53);
    });

    test('needs calculate a value by porcentage', () {
      expect(
        percentageReverse(percentage: 8.53, total: 150),
        12.794999999999998,
      );
    });
  });

  group('String utils', () {
    test('need be capitalized', () {
      expect(capitalize('wORD'), equals('Word'));
    });
  });
}
