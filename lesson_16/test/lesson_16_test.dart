import 'package:test/test.dart';

import '../bin/lesson_16.dart';

void main() {
  test('Test 1', () {
    expect(
        solution(
          [1, 3, 7, 9, 9],
          [5, 6, 8, 9, 10],
        ),
        equals(3));
  });

  test('Test 2', () {
    expect(
        solution(
          [1, 3, 7, 9, 9, 11, 11, 14, 16, 33],
          [5, 6, 8, 9, 10, 11, 15, 16, 21, 34],
        ),
        equals(6));
  });

  test('Test 3', () {
    expect(
        solution(
          [],
          [],
        ),
        equals(0));
  });

  test('Test 4', () {
    expect(
        solution(
          [1],
          [2],
        ),
        equals(1));
  });
}
