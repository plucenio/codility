void main(List<String> arguments) {
  final datetime = DateTime.now();
  print(solution(1, 2000000000, 2));
  print(DateTime.now().difference(datetime));
}

int solution(int A, int B, int K) {
  int sum = 1;
  if (A > B || K == 0) return 0;
  int count = 0;
  for (int i = A; i <= B; i = i + sum) {
    if (sum != 1) {
      count++;
      continue;
    }
    if (i % K == 0) {
      count++;
      sum = K;
    }
  }
  return count;
}
