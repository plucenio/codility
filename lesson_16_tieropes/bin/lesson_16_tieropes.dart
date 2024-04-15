void main(List<String> arguments) {
  print(solution(10000000,
      List.generate(10000000, (index) => index % 2 == 0 ? 3 : 100000)));
}

int solution(int K, List<int> A) {
  int count = 0;
  int sum = 0;
  for (int i = 0; i < A.length; i++) {
    sum += A[i];
    if (sum >= K) {
      count++;
      sum = 0;
    }
  }
  return count;
}
