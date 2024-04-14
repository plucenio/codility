import 'package:test/test.dart';
import '../bin/lesson_16_tieropes.dart';

void main() {
  test('test 1', () {
    expect(solution(1, []), 0);
  });

  test('test 2', () {
    expect(solution(4, [1, 2, 3, 4, 1, 1, 3]), 3);
  });

  test('test 2', () {
    expect(solution(4, [1, 2, 3, 4, 1, 1, 3, 2, 4]), 4);
  });
}
