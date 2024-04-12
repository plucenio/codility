import 'package:test/test.dart';

import '../bin/lesson_9.dart';

void main() {
  test("Test 1", () {
    expect(
      solution([3, 2, 6, -1, 4, 5, -1, 2]),
      equals(17),
    );
  });

  test("Test 2", () {
    expect(
      solution([3, 2, 6]),
      equals(0),
    );
  });

  test("Test 3", () {
    expect(
      solution(List.generate(500, (index) => index)),
      equals(2979),
    );
  });
}
