void main(List<String> arguments) {
  print(solution(4, [1, 2, 3, 4, 1, 1, 3, 2, 4]));
}

int solution(int K, List<int> A) {
  int count = 0;
  for (int i = 0; i < A.length; i++) {
    for (int j = i + 1; j < A.length; j++) {
      int sum = 0;
      sum = A.getRange(i, j + 1).reduce((value, element) {
        return value + element;
      });
      if (sum >= K) {
        count++;
        i = j;
        break;
      }
    }
  }
  return count;
}
