import 'package:test/test.dart';

import '../bin/lesson_5.dart';

void main() {
  test('A greater than B should return 0', () {
    expect(solution(5, 3, 2), equals(0));
  });

  test('K is 0 should return 0', () {
    expect(solution(1, 10, 0), equals(0));
  });

  test('All elements divisible by K should return correct length', () {
    expect(solution(3, 10, 3), equals(3));
  });

  test('No elements divisible by K should return 0', () {
    expect(solution(1, 10, 2), equals(5));
  });
}
