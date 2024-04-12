void main(List<String> arguments) {
  print(solution([10, 2, 5, 1, 8, 20]));
}

int solution(List<int> A) {
  if (A.length < 3) return 0;
  List aList = A;
  aList.sort();
  for (int i = aList.length - 1; i >= 2; i--) {
    if (aList[i - 1] + aList[i - 2] > aList[i]) {
      return 1;
    }
  }
  return 0;
}
