import 'package:test/test.dart';

import '../bin/lesson_5.dart';

void main() {
  test('Test 1', () {
    expect(solution(5, 3, 2), equals(0));
  });

  test('Test 2', () {
    expect(solution(1, 10, 0), equals(0));
  });

  test('Test 3', () {
    expect(solution(3, 10, 3), equals(3));
  });

  test('Test 4', () {
    expect(solution(1, 10, 2), equals(5));
  });

  test('Test 5', () {
    expect(solution(0, 0, 2), equals(0));
  });

  test('Test 6', () {
    expect(solution(0, 0, 0), equals(0));
  });

  test('Test 7', () {
    expect(solution(-1, 0, 0), equals(0));
  });

  test('Test 8', () {
    expect(solution(-1, -2, 0), equals(0));
  });

  test('Test 9', () {
    expect(solution(-1, -2, -3), equals(0));
  });

  test('Test 10', () {
    expect(solution(1000, -2, -3), equals(0));
  });

  test('Test 11', () {
    expect(solution(10000, 20000, 3), equals(3333));
  });

  test('Test 12', () {
    expect(solution(9, 19, 3), equals(4));
  });

  test('Test 13', () {
    expect(solution(9, 19, 20), equals(0));
  });

  test('Test 14', () {
    expect(solution(0, 1, 11), equals(0));
  });
}
