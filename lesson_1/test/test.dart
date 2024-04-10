import 'package:test/test.dart';
import '../bin/lesson_1.dart';

void main() {
  test('toBinary should return 0 for input 0', () {
    expect(toBinary(0), BigInt.from(0));
  });

  test('toBinary should return 1 for input 1', () {
    expect(toBinary(1), BigInt.from(1));
  });

  test('toBinary should return 101 for input 5', () {
    expect(toBinary(5), BigInt.from(101));
  });

  test('toBinary should return 1010 for input 10', () {
    expect(toBinary(10), BigInt.from(1010));
  });

  test(
      'toBinary should return 1610612737 for input 1100000000000000000000000000001',
      () {
    expect(
        toBinary(1610612737), BigInt.parse("1100000000000000000000000000001"));
  });
}
