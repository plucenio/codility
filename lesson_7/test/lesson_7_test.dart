import 'package:test/test.dart';

import '../bin/lesson_7.dart';

void main() {
  test("Test 1", () {
    expect(solution([], []), equals(0));
  });

  test("Test 2", () {
    expect(solution([1, 2, 3], [1, 1, 1]), equals(3));
  });

  test("Test 3", () {
    expect(solution([4, 3, 2, 1, 5], [0, 1, 1, 0, 1]), equals(4));
  });

  test("Test 4", () {
    expect(solution([1, 3, 5, 7], [0, 1, 0, 1]), equals(3));
  });

  test("Test 5", () {
    expect(solution([7, 20, 2, 5, 1, 3, 8, 9], [0, 1, 0, 1, 0, 0, 0, 0]),
        equals(2));
  });
}
