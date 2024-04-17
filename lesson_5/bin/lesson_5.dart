void main(List<String> arguments) {
  final datetime = DateTime.now();
  print(solution(0, 999999999999999999, 56));
  print(DateTime.now().difference(datetime));
}

int solution(int A, int B, int K) {
  int sum = 1;
  if (A == 0 && B == 0) return 0;
  if (A > B || K == 0) return 0;
  if (K > A && K > B) return 0;
  int count = 0;
  for (int i = A; i <= B; i = i + sum) {
    if (sum != 1) {
      while (B % K != 0) {
        B--;
      }
      count = count + ((B - A) / K).floor();
      break;
    }
    if (i % K == 0) {
      count++;
      sum = K;
    }
  }
  return count;
}
