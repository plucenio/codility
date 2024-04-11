void main(List<String> arguments) {
  final value = DateTime.now();
  print(solution1(List<int>.generate(200000, (index) => index + 1)));
  print(DateTime.now().difference(value));
}

int solution1(List<int> A) {
  int minVal = 1;
  int maxVal = 1000000;
  if (A.isEmpty) {
    return minVal;
  }
  A.sort();
  for (int i = 1; i <= maxVal; i++) {
    if (!A.contains(i)) {
      return i;
    }
  }
  return minVal;
}

int solution2(List<int> A) {
  int minVal = 1;
  bool encounter = false;
  if (A.isEmpty) {
    return minVal;
  }
  while (!encounter) {
    if (A.contains(minVal)) {
      minVal++;
    } else {
      encounter = true;
    }
  }
  return minVal;
}
