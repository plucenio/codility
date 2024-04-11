import 'dart:collection';

void main(List<String> arguments) {
  final value = DateTime.now();
  print(solution(List<int>.generate(40000, (index) => index + 1)));
  print(DateTime.now().difference(value));
}

int solution(List<int> A) {
  int minVal = 1;
  int maxVal = 1000000;
  if (A.isEmpty) {
    return minVal;
  }
  HashSet set = HashSet.from(A);
  for (int i = 1; i <= maxVal; i++) {
    if (!set.contains(i)) {
      return i;
    }
  }
  return minVal;
}
